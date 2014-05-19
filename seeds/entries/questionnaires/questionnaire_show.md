---

category_name: questionnaire
title: 質問表の取得
method: show

---

# 質問表の取得

## 質問表を取得します。

questionnaire_id _(必須)_:
: __integer__
: 取得する質問表のid

~~~
定義
GET https://creativesurvey.com/api/v1/questionnaires/:questionnaire_id

リクエスト例
curl -X GET https://creativesurvey.com/api/v1/questionnaires/518 \
-d "auth_token=YourAuthToken"

レスポンス例
{
  "survey_id": 527,
  "id": 518
}
~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~
