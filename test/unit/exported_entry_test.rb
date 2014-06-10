# encoding: utf-8

require 'test_helper'


class EntryTest < ActiveSupport::TestCase
  
  data("回答項目の作成", ["200", `curl -X POST http://localhost:9292/api/v1/questions/3357/answer_items -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("回答項目の削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/answer_items/6322 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("回答項目一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questions/3359/answer_items -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("回答項目の取得", ["200", `curl -X GET http://localhost:9292/api/v1/answer_items/6325 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("回答項目の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/answer_items/6327 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("回答一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/panels/3810/answers -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("公開設定とセグメントの関連の作成　(公開設定から)", ["200", `curl -X POST http://localhost:9292/api/v1/collectors/6433/collector_segment_chains -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("公開設定とセグメントの関連の作成　(セグメント設定から)", ["200", `curl -X POST http://localhost:9292/api/v1/segments/691/collector_segment_chains -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("公開設定とセグメントの関連の削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/collector_segment_chains/471 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("公開設定とセグメントの関連一覧の取得　(公開設定から)", ["200", `curl -X GET http://localhost:9292/api/v1/collectors/6444/collector_segment_chains -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("公開設定とセグメントの関連一覧の取得　(セグメント設定から)", ["200", `curl -X GET http://localhost:9292/api/v1/segments/692/collector_segment_chains -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("公開設定とセグメントの関連の取得", ["200", `curl -X GET http://localhost:9292/api/v1/collector_segment_chains/472 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("公開設定とセグメントの関連の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/collector_segment_chains/473 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("公開設定の公開中止", ["200", `curl -X POST http://localhost:9292/api/v1/collectors/6457/abort -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("公開設定の作成", ["200", `curl -X POST http://localhost:9292/api/v1/surveys/5811/collectors -d "auth_token=sxHNTa6w2hNxfzq7dHQo&collector[name]=new_collector" -w "%{http_code}"`])
  data("公開設定の削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/collectors/6460 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("公開設定一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/surveys/5813/collectors -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("公開設定の公開", ["200", `curl -X POST http://localhost:9292/api/v1/collectors/6463/publish -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("公開設定の取得", ["200", `curl -X GET http://localhost:9292/api/v1/collectors/6465 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("公開設定の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/collectors/6467 -d "auth_token=sxHNTa6w2hNxfzq7dHQo&collector[name]=new_collector" -w "%{http_code}"`])
  data("画像の関連一覧の取得(回答項目から)", ["200", `curl -X GET http://localhost:9292/api/v1/answer_items/6330/creative_chains -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("画像の関連一覧の取得(質問から)", ["200", `curl -X GET http://localhost:9292/api/v1/questions/3364/creative_chains -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("画像の関連一覧の取得(回答補助項目から)", ["200", `curl -X GET http://localhost:9292/api/v1/sub_items/5856/creative_chains -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("画像の関連の更新(回答項目から)", ["200", `curl -X PUT http://localhost:9292/api/v1/answer_items/creative_chains/9650 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("画像の関連の更新(質問から)", ["200", `curl -X PUT http://localhost:9292/api/v1/questions/creative_chains/9650 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("画像の関連の更新(回答補助項目から)", ["200", `curl -X PUT http://localhost:9292/api/v1/sub_items/creative_chains/9650 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("画像の作成", ["200", `curl -X POST http://localhost:9292/api/v1/surveys/5857/creatives -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("画像の削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/creatives/1106 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("画像一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/surveys/5859/creatives -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("画像の取得", ["200", `curl -X GET http://localhost:9292/api/v1/creatives/1107 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("画像の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/creatives/1108 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("デザインの取得", ["200", `curl -X GET http://localhost:9292/api/v1/designs/1 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("デザインの更新", ["200", `curl -X PUT http://localhost:9292/api/v1/designs/1 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("最終画面の取得", ["200", `curl -X GET http://localhost:9292/api/v1/egressions/1 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("最終画面の変更", ["200", `curl -X PUT http://localhost:9292/api/v1/egressions/1 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("和文フォント一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/fonts -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("欧文フォント一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/google_fonts -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("分岐アクションの作成", ["200", `curl -X POST http://localhost:9292/api/v1/logics/600/logic_items -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("分岐アクションの削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/logic_actions/484 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("分岐アクションの取得", ["200", `curl -X GET http://localhost:9292/api/v1/logic_actions/485 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("分岐アクションの更新", ["200", `curl -X PUT http://localhost:9292/api/v1/logic_actions/486 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("分岐アイテムの作成", ["200", `curl -X POST http://localhost:9292/api/v1/logics/604/logic_items -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("分岐アイテムの削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/logic_items/487 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("分岐アイテム一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/logics/606/logic_items -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("分岐アイテムの取得", ["200", `curl -X GET http://localhost:9292/api/v1/logic_items/488 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("分岐アイテムの更新", ["200", `curl -X PUT http://localhost:9292/api/v1/logic_items/489 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("分岐設定の作成", ["200", `curl -X POST http://localhost:9292/api/v1/questions/3390/logics -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("分岐設定の削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/logics/609 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("分岐設定一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questions/3392/logics -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("分岐設定の取得", ["200", `curl -X GET http://localhost:9292/api/v1/logics/610 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("分岐設定の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/logics/611 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("質問順序一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questionnaires/1/page_order_items -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("質問順序の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/page_order_items/13 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("回答者一覧の取得(セグメント毎)", ["200", `curl -X GET http://localhost:9292/api/v1/segments/693/panels -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("回答者一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/surveys/5959/panels -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("回答者の取得", ["200", `curl -X GET http://localhost:9292/api/v1/panels/3810 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("置き換え変数設定の作成", ["200", `curl -X POST http://localhost:9292/api/v1/questionnaires/1/questionnaire_variables -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("置き換え変数設定の削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/questionnaire_variables/436 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("置き換え変数設定一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questionnaires/1/questionnaire_variables -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("置き換え変数設定の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questionnaire_variables/437 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("置き換え変数設定の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/questionnaire_variables/438 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("質問表一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/surveys/5970/questionnaires -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("質問表の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questionnaires/1 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("質問の作成", ["200", `curl -X POST http://localhost:9292/api/v1/questionnaires/1/questions -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("質問の削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/questions/3395 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("質問一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questionnaires/1/questions -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("質問の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questions/3396 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("質問の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/questions/3397 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("ランダム設定の作成", ["200", `curl -X POST http://localhost:9292/api/v1/questionnaires/1/randomizers -d "auth_token=sxHNTa6w2hNxfzq7dHQo&randomizer[step_num]=1&randomizer[start_index]=0&randomizer[end_index]=1" -w "%{http_code}"`])
  data("ランダム設定の削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/randomizers/416 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("ランダム設定一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questionnaires/1/randomizers -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("ランダム設定の取得", ["200", `curl -X GET http://localhost:9292/api/v1/randomizers/417 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("ランダム設定の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/randomizers/418 -d "auth_token=sxHNTa6w2hNxfzq7dHQo&randomizer[step_num]=1&randomizer[start_index]=1159&randomizer[end_index]=1160" -w "%{http_code}"`])
  data("フィルターの作成", ["200", `curl -X POST http://localhost:9292/api/v1/segments/694/segment_filters -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("フィルターの削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/segment_filters/313 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("フィルター一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/segments/696/segment_filters -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("フィルターの取得", ["200", `curl -X GET http://localhost:9292/api/v1/segment_filters/314 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("フィルターの更新", ["200", `curl -X PUT http://localhost:9292/api/v1/segment_filters/315 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("セグメント設定の作成", ["200", `curl -X POST http://localhost:9292/api/v1/surveys/6006/segments -d "auth_token=sxHNTa6w2hNxfzq7dHQo&segment[name]=new_segment" -w "%{http_code}"`])
  data("セグメント設定の削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/segments/699 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("セグメント設定一覧を取得", ["200", `curl -X GET http://localhost:9292/api/v1/surveys/6008/segments -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("セグメント設定の取得", ["200", `curl -X GET http://localhost:9292/api/v1/segments/700 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("セグメント設定の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/segments/701 -d "auth_token=sxHNTa6w2hNxfzq7dHQo&segment[name]=new_segment" -w "%{http_code}"`])
  data("回答補助項目の作成", ["200", `curl -X POST http://localhost:9292/api/v1/questions/3398/sub_items -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("回答補助項目の削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/sub_items/5924 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("回答補助項目一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questions/3400/sub_items -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("回答補助項目の取得", ["200", `curl -X GET http://localhost:9292/api/v1/sub_items/5929 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("回答補助項目の更新", ["200", `curl -X PUT http://localhost:9292/api/v1/sub_items/5932 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("アンケートの作成", ["200", `curl -X POST http://localhost:9292/api/v1/surveys -d "auth_token=sxHNTa6w2hNxfzq7dHQo&survey[name]=new_survey" -w "%{http_code}"`])
  data("アンケートの削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/surveys/6031 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("アンケート一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/surveys -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("アンケートの取得", ["200", `curl -X GET http://localhost:9292/api/v1/surveys/6032 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("アンケートの更新", ["200", `curl -X PUT http://localhost:9292/api/v1/surveys/6033 -d "auth_token=sxHNTa6w2hNxfzq7dHQo&survey[name]=new_survey" -w "%{http_code}"`])
  data("テーマ一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/themes -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("表示ロジックの作成", ["200", `curl -X POST http://localhost:9292/api/v1/questions/3403/visibilities -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("表示ロジックの削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/visibilities/485 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("表示ロジック一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/questions/3405/visibilities -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("表示ロジックの取得", ["200", `curl -X GET http://localhost:9292/api/v1/visibilities/486 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("表示ロジックの更新", ["200", `curl -X GET http://localhost:9292/api/v1/visibilities/487 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("表示アイテムの作成", ["200", `curl -X POST http://localhost:9292/api/v1/visibilities/488/visibility_items -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("表示アイテムの削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/visibility_items/356 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("表示アイテム一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/visibilities/490/visibility_items -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("表示アイテムの取得", ["200", `curl -X GET http://localhost:9292/api/v1/visibility_items/357 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("表示アイテムの更新", ["200", `curl -X PUT http://localhost:9292/api/v1/visibility_items/358 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("表示ターゲットの作成", ["200", `curl -X POST http://localhost:9292/api/v1/visibilities/493/visibility_targets -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("表示ターゲットの削除", ["200", `curl -X DELETE http://localhost:9292/api/v1/visibility_targets/756 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("表示ターゲット一覧の取得", ["200", `curl -X GET http://localhost:9292/api/v1/visibilities/495/visibility_targets -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("表示ターゲットの取得", ["200", `curl -X GET http://localhost:9292/api/v1/visibility_targets/759 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])
  data("表示ターゲットの更新", ["200", `curl -X PUT http://localhost:9292/api/v1/visibility_targets/761 -d "auth_token=sxHNTa6w2hNxfzq7dHQo" -w "%{http_code}"`])

  def test_response_code(data)
    expected, response = data
    assert_equal expected, response.match(/[0-9]{3}$/).to_s, "#{response}"
  end

  def tear_down

  end
end
