FactoryBot.define do
  factory :ip_log do
    ip { Faker::Internet.ip_v4_address }
    change_time { Faker::Time.between(from: DateTime.now-1, to: DateTime.now) }
  end
end