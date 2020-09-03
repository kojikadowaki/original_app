# README
# git push確認用
* 門脇光志
* 坂本紗也華
* 岡安海渡
* 柏木翔大
* 南條孝太朗

# DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|
|email|string|null: false, unique: true, index: true|
|phone_number|string| 
|password|string|null: false|
### Association
- has_many :restaurants, dependent: :destroy

## restaurantsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|opening_hours|string|null: false|
|phone_number|string|unique: true|  
|menu_tax|string|null: false| 
|post_code|integer|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|address_number|string|null: false|
|building_name|string|
|url|string|  
|user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to_active_hash :menu_tax
- has_many :menus, dependent: :destroy
- has_one :comment, dependent: :destroy
- has_many :menu_images, dependent: :destroy

## menusテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|price|integer|null: false|
|restaurant_id|references|null: false, foreign_key: true|
### Association
- belongs_to :restaurant

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|description|text|null: false|
|image_url|string|null: false|
|video_url|string|
|restaurant_id|references|null: false, foreign_key: true|
### Association
- belongs_to :restaurant

## menu_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|url|string|null: false|
|restaurant_id|references|null: false, foreign_key: true|
### Association
- belongs_to :restaurant

## contact_informationsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|phone_number|string|null: false|
|restaurant_id|references|null: false, foreign_key: true|
### Association
- belongs_to :restaurant