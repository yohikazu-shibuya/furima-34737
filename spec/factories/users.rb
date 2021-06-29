FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { '123abc' }
    password_confirmation { '123abc' }
    last_name             { 'ナマエ' }
    first_name            { 'ナマエ' }
    last_name_kana        { 'ナマエ' }
    first_name_kana       { 'ナマエ' }
    birthday              { '2000-01-01' }

    # association :item

  end
end
