# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

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

