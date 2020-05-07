# README

## アプリケーション概要
本アプリは飲んだお酒を登録し、後でどんなお酒を飲んだか確認できるアプリです。

以前、旅行いった時に飲んだ美味しいお酒なんだっけな？
自分の好きなお酒を他人に伝えたい！
などの時に活躍するという想定で作成しました。

### 開発理由
世界には多くの酒があり、飲んだお酒を自分の代わりに覚えていて
くれるアプリが欲しいと思ったのと、カリキュラムで習ったことを
生かしたアプリを作りたかったため作成しました。

## 機能一覧
・ログイン機能
・投稿機能
・マイページ機能
・編集、削除機能
・投稿一覧機能
・投稿詳細機能
・画像ファイルのアップロード機能
・ページネーション機能
・画像選択時のpreview機能

## 開発環境
Ruby on Rails /
JavaScript /
AWS EC2 S3 /
Github /
Visual Studio Code


# ばっかす DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|user|string|null: false|
|e-mail|string|null: false|
|password|string|null: false|
### Association
- has_many :items

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|item|string|null:false|
|text|text||
|liquor_id|integer|null:false|
|taste_id|integer|null:false|
|place_id|integer|null:false|
|alcohol_id|integer|null:false|
|user_id|references|null: false,foreign_key: true|
### Association
- belongs_to :user
- has_many :images, dependent: :destroy 

## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string||
|item_id|references|null: false,foreign_key: true|
### Association
- belongs_to :item

