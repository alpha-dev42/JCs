FactoryBot.define do
    factory :user do
        email { "user3@example.com" }
        password { "1234567890" }
        first_name { "Peter" }
        last_name { "Pan" }
        admin { false }
    end
end