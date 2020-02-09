FactoryBot.define do
  factory :post do
    name { "MyString" }
    body { "MyText" }
    topic { nil }
    user { nil }
  end
end
