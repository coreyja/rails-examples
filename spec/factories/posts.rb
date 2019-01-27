FactoryBot.define do
  factory :post do
    user

    title { "PostTitle" }
    content { "PostContent" }
  end
end
