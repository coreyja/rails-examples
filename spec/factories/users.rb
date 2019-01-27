FactoryBot.define do
  factory :user do
    sequence :email do |n|
      "#{n}@example.com"
    end
    name { 'SomeName' }
  end
end
