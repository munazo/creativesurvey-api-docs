# encoding: utf-8

require 'test_helper'
require 'test_helpers/dynamic_entry'
require 'test_helpers/md_tester'
#require 'test/unit/helpers/entries_helper_test'

class EntryTest < ActiveSupport::TestCase
  def setup
  end

  TestHelpers::MdTester.new.retrieve.each{ |entry|
    parent_klass = entry.parent_klass.present? ? entry.parent_klass : ""

    define_method("test_response_code_in_#{entry.action}_#{entry.resource_name.to_s}#{parent_klass}") do
      response = entry.class.send(
        entry.method,
        "#{entry.end_point}#{entry.request_path}",
        entry.default_params
      )
      assert response.code == 200, "invalid status code at #{entry.title}\nreturned #{response.code}\n#{response.parsed_response}"
    end
  }
end
