FactoryBot.define do
  factory :friend do
    name { Faker::Lorem.characters(number: 4) }
    surname { Faker::Lorem.characters(number: 4) }
    email { Faker::Lorem.characters(number: 4) }
    where_met { :other }
  end
end