# テーブル設計

# usersテーブル
| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| last_name          | string | null: false |
| first_name         | string | null: false |
| last_name_kana     | string | null: false |
| first_name_kana    | string | null: false |
| birthday           | date   | null: false |

### Association
- has_many :items
- has_many :orders

# itemsテーブル
| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| product                | string     | null: false                    |
| product_description    | text       | null: false                    |
| category_id            | integer    | null: false                    |
| product_detail_id      | integer    | null: false                    |
| ship_base_id           | integer    | null: false                    |
| prefectures_id         | integer    | null: false                    |
| ship_date_id           | integer    | null: false                    |
| price                  | integer    | null: false                    |

### Association
- belongs_to :user
- has_one :order

# ordersテーブル
| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| user       | references | null: false, foreign_key: true |
| item       | references | null: false, foreign_key: true |

### Association
- belongs_to :item
- belongs_to :user
- has_one :address

# addressesテーブル
| Column         | Type       | Options                        |
| ---------------| ---------- | ------------------------------ |
| post_code      | string     | null: false                    |
| prefectures_id | integer    | null: false                    |
| city           | string     | null: false                    |
| block          | string     | null: false                    |
| building       | string     |                                |
| phone_number   | string     | null: false                    |
| order          | references | null: false, foreign_key: true |

### Association
- belongs_to :order
