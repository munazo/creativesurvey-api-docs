---

category_name: visibility
title: 表示ロジック一覧の取得
method: index

---

# 表示ロジック一覧の取得

## 表示ロジック一覧を取得します。

question_id _(必須)_:
: __integer__
: 取得する分岐設定を含む質問のid

~~~
定義
GET https://creativesurvey.com/api/v1/questions/:question_id/visibilities

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/questions/1911/visibilities \
-d "auth_token=YourAuthToken"

レスポンス例
[
  {
    "updated_at": "2014-05-19T16:34:05+09:00",
    "question_id": 1911,
    "order_index": null,
    "inbox_id": 6,
    "id": 62,
    "created_at": "2014-05-19T16:34:05+09:00"
  },
  {...},
  {...}
]

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
