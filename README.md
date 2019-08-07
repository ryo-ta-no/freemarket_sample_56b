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

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null false, index|　ニックネーム
|email|string|null false, unique: true|　メールアドレス
|first-name|string|null false|　全角苗字
|last-name|string|null false|　全角名前
|first-kana|string|null false|　苗字カタカナ
|last-kana|string|null false|　名前カタカナ
|year|integer|null false|　年
|year-mouth|integer|null false|　月
|year-day|integer|null false|　日
|call-number|string|null false, unique: true|　電話番号
|authenticaition-number|string|null false, unique: true| 認証番号

### Association
- has_many :items
- has_one :card
- has_one :profile
- has_one :street


## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|card-number|integer|null false|　カード番号
|expirationdate-year|integer|null false|　カード年
|expirationdate-mouth|integer|null false|　カード月
|card-name|string|null false| カード名前
|security-cord|integer|null false|　セキュリティーコード

### Association
- belongs_to :user

## Profileテーブル
|Column|Type|Options|
|------|----|-------|
|text|text||　プロフィール紹介文
|user_id|integer|foreign_key: true, null false|

### Association
- belongs_to :user


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null false, index|　商品名
|explain|text|null false|　商品説明
|state|string|null false|　商品状態
|price|integer|null false|　商品価格
|buyer_id|integer|foreign_key: true, null false|
|seller_id|integer|foreign_key: true, null false|
|postage|integer|null false|　送料負担者
|prefecture_id|integer|foreign_key: true, null false|
|shipping_date|integer|foreign_key: true, null false|
|size_id|string|foreign_key: true, null false|
|brand_id|integer|foreign_key: true, null false|
|user_id|integer|foreign_key: true, null false|

### Association
- has_many :photo
- belongs_to :user
- belomgs_to :size
- belongs_to :prefecture
- belongs_to :category
- belongs_to :brand


## sizesテーブル
|Column|Type|Options|
|------|----|-------|
|size|string|null false|　サイズ

### Association
- has_many :items
- has_many :categories through: :size_categories


## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|category-name|string|null false|　カテゴリー名前
|ancestry|string|null false| アンセストリー

### Association
- has_many :items
- has_many :sizes through: :size_categories


## Brandsテーブル
|Column|Type|Options|
|------|----|-------|
|brand|string|null false, index|　ブランド名

### Association
- has_many :items

## Prefecturesテーブル
|Column|Type|Options|
|------|----|-------|
|Prefecture|string|null false|　商品の都道府県

### Association
- has_many :items


## Photosテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|integer|foreign_key: true, null false|
|img|string|null false|　画像

### Association
- belongs_to :item

###　size_categoriesテーブル　(中間テーブル)
|Column|Type|Options|
|------|----|-------|
|size_id|integer|foreign_key: true, null false|
|category_id|integer|foreign_key: true, null false|

### Association
- belongs_to :categories
- belongs_to :size

## Streetsテーブル
|Column|Type|Options|
|------|----|-------|
|post|string|null false|   郵便番号
|pretectures|string|null false|   都道府県
|city|string|null false|　市区町村
|address|string|null false| 番地
|bilding|string|| 建物名
|phone|integer|| 電話
|user_id|integer|foreign_key: true, null false|

### Association
- belongs_to :user