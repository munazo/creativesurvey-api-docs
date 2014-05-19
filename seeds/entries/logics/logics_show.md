---

category_name: logic
title: 分岐設定の取得
method: show

---

# 分岐設定の取得

## 分岐設定を取得します。

logic_id _(必須)_:
: __integer__
: 取得する分岐設定のid

~~~
定義
GET https://creativesurvey.com/api/v1/api/v1/logics/:logic_id

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/logics/138 \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "question_id": 1825,
  "id": 138,
  "order_index": 0,
  "is_valid": true,
  "destination_id": null,
  "answer_item_id": null
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
