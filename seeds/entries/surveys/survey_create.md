---

category_name: survey
title: アンケートの作成
method: create

---

# アンケートの作成

## 新規アンケートを作成します。

name _(必須)_:
: __string__
: アンケート名

password:
: __string__ _(デフォルト: null)_
: 結果を公開する際に求めるパスワード

tag_color:
: __string__ _(デフォルト: null)_
: アンケートのタグの色で、下記の色を指定することが出来ます。
: cyan   : 水色
: purple : 紫
: red    : 赤
: green  : 緑
: pink   : ピンク
: yellow : 黄色
: orange : オレンジ
: gray   : 灰色

is_public:
: __boolean__ _(デフォルト: null)_
: trueを返すとアンケートの結果を公開します。

active_segment_id:
: __integer__ _(デフォルト: null)_
: 適用するセグメントのid

~~~
定義
POST https://creativesurvey.com/api/v1/surveys

リクエスト例
$ curl -X POST https://creativesurvey.com/api/v1/surveys \
-d "auth_token=YourAuthToken" \
-d "survey[name]=sample_survey" \
-d "survey[tag_color]=red"

レスポンス例
{
  "id": 532,
  "password": null,
  "is_public": null,
  "active_segment_id": null,
  "tag_color": "red",
  "name": "sample_survey"
}
~~~
 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　