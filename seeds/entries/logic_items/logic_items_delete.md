---

category_name: logic_item
title: 分岐アイテムの削除
method: delete

---

# 分岐アイテムの削除

## 分岐アイテムを削除します。

logic_item_id _(必須)_:
: __integer__
: 取得する分岐アイテムのid

~~~
定義
DELETE https://creativesurvey.com/api/v1/logic_items/:logic_item_id

リクエスト例
$ curl -X DELETE https://creativesurvey.com/api/v1/logic_items/98 \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "logic_id": 139,
  "id": 98,
  "question_id": 1875,
  "order_index": 3,
  "condition": "!=",
  "sub_item_id": null,
  "answer_item_id": 4409
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
