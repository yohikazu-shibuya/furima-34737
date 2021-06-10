# テーブル設計

# usersテーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false |
| password           | string | null: false |
| last_name          | string | null: false |
| first_name         | string | null: false |
| last_name_kana     | string | null: false |
| first_name_kana    | string | null: false |
| birthday           | string | null: false |

### Association
- has_many :items
- has_many :order

# itemsテーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| product                | text       | null: false                    |
| product_description    | text       | null: false                    |
| category               | text       | null: false                    |
| product_details        | text       | null: false                    |

| shipbase               | text       | null: false                    |
| shipping_off_origin    | text       | null: false                    |
| shipdate               | text       | null: false                    |
| product_details        | text       | null: false                    |
| price                  | text       | null: false                    |

### Association
- belongs_to :user
- has_many :order

# orderテーブル
| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| user       | string | null: false |
| item       | text   | null: false |

### Association
- has_many :items
- belongs_to :user
- has_one :addres

# addresテーブル
| Column        | Type       | Options                        |
| --------------| ---------- | ------------------------------ |
| postcode      | text       | null: false                    |
| prefecture_id | text       | null: false                    |
| city          | text       | null: false                    |
| block         | text       | null: false                    |
| building      | text       | null: false                    |
| phone_number  | text       | null: false                    |

### Association
- belongs_to :user
