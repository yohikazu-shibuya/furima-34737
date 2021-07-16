FactoryBot.define do
  factory :order_address do
    post_code { '123-4567' }
    prefecture_id { 2 }
    city { '札幌市' }
    block { '1-1' }
    building { '東京ハイツ' }
    phone_number { '09012345678' }

  end
end
