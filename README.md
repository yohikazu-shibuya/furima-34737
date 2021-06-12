# テーブル設計

# usersテーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false, unique: true |
| password           | string | null: false |
| encrypted_password | string | null: false |
| last_name          | string | null: false |
| first_name         | string | null: false |
| last_name_kana     | string | null: false |
| first_name_kana    | string | null: false |
| birthday           | date   | null: false |
| item               | references | null: false,  foreign_key: true|

### Association
- has_many :items
- has_many :orders

# itemsテーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| product                | string      | null: false                    |
| product_description    | text       | null: false                    |
| category               | string      | null: false                    |
| product_details        | string      | null: false                    |
| shipbase               | string     | null: false                    |
| shipping_off_origin    | string     | null: false                    |
| shipdate               | string     | null: false                    |
| product_details        | string     | null: false                    |
| price                  | string     | null: false                    |

### Association
- has_one :user
- has_many :order

# ordersテーブル
| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |
| item       | references | null: false, foreign_key: true |

### Association
- has_many :item
- belongs_to :user
- has_one :addres

# addressテーブル
| Column        | Type       | Options                        |
| --------------| ---------- | ------------------------------ |
| postcode      | string     | null: false                    |
| prefecture_id | string     | null: false                    |
| city          | string     | null: false                    |
| block         | string     | null: false                    |
| building      | string     | null: false                    |
| phone_number  | string     | null: false                    |
| item          | references | null: false, foreign_key: true |

### Association
- belongs_to :order
