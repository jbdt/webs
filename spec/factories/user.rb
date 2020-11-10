FactoryBot.define do
  factory :user do
    name { Faker::FunnyName.name }
    surnames { Faker::FunnyName.two_word_name }
    phone { Faker::PhoneNumber.cell_phone }
    email { Faker::Internet.email }
    role { Faker::Number.between(from: 0, to: 2) }
    password { "Test1234" }

    trait :admin do
      role { 'admin' }
    end

    trait :integrator do
      role { 'integrator' }
    end

    trait :client do
      role { 'client' }
    end
  end
end