FactoryBot.define do
    sequence(:name) { |n| "bike #{n}}" }
  
    factory :product do
      name
      description { "a test" }
      image_url { "test.img" }
      price { 999 }
    end
  end