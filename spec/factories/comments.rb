FactoryBot.define do
  factory :comment do
    post
    user
    content { "MyString" }
  end
end
