FactoryBot.define do
  factory :order_address do
    token {"tok_abcdefghijk00000000000000000"}
    post_code { '123-4567' }
    prefecture_id { 2 }
    city { '札幌市' }
    block { '1-1' }
    building { '東京ハイツ' }
    phone_number { 19012345678 }
  end
end
