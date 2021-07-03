FactoryBot.define do
  factory :item do
    product               { 'ナマエ' }
    product_description          { 'ナマエ'}
    category_id              { 2 }
    product_detail_id { 2 }
    ship_base_id            { 2 }
    prefecture_id           { 2 }
    ship_date_id        { 2 }
    price       { 1000 }
    # user_id       { 1 }

    association :user
    
    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.jpg'), filename: 'test_image.ipg')
    end

  end
end
