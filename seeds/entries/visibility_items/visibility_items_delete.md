---

category_name: visibility_item
title: 表示アイテムの削除
method: delete

---

# 表示アイテムの削除

## 表示アイテムを削除します。

visibility_item_id _(必須)_:
: __integer__
: 削除する表示アイテムのid

~~~
定義
DELETE https://creativesurvey.com/api/v1/visibility_items/:visibility_item_id

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/visibility_items/102 \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "visibility_id": 71,
  "id": 102,
  "question_id": 1916,
  "order_index": 3,
  "condition": "!=",
  "sub_item_id": null,
  "answer_item_id": 4493
}

リソースが存在しない場合
{
  "message": "resource not found"
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
