---

name: logic
title: 分岐設定

---

|リレーション|リソース名|日本語名|
|:---|:---|:---|
|belongs_to|[question](#question)|質問|
||[answer_item](#answer_item)|質問項目|
|has_one|[logic_action](#logic_action)|分岐アクション|
|has_many|[logic_items](#logic_item)|分岐アイテム|


分岐設定のスキップ時のメッセージなどの編集、作成は[分岐アクション(logic_action)](#logic_action)を、分岐設定の条件の編集や作成は[分岐アイテム(logic_items)](#logic_item)を参照ください。