user_1 = FactoryBot.create(:user, name: Faker::HarryPotter.character, email: Faker::Internet.unique.email)
user_2 = FactoryBot.create(:user, name: Faker::HowIMetYourMother.character, email: Faker::Internet.unique.email)
user_3 = FactoryBot.create(:user, name: Faker::HarryPotter.character, email: Faker::Internet.unique.email)
user_4 = FactoryBot.create(:user, name: Faker::HarryPotter.character, email: Faker::Internet.unique.email)

user_1_post_1 = FactoryBot.create(:post, user: user_1, title: Faker::HarryPotter.spell, content: Faker::HarryPotter.quote)
user_1_post_2 = FactoryBot.create(:post, user: user_1, title: Faker::HarryPotter.spell, content: Faker::HarryPotter.quote)
user_1_post_3 = FactoryBot.create(:post, user: user_1, title: Faker::HarryPotter.spell, content: Faker::HarryPotter.quote)

user_2_post_1 = FactoryBot.create(:post, user: user_2, title: Faker::HowIMetYourMother.high_five, content: Faker::HowIMetYourMother.quote)
user_2_post_2 = FactoryBot.create(:post, user: user_2, title: Faker::HowIMetYourMother.high_five, content: Faker::HowIMetYourMother.quote)
user_2_post_3 = FactoryBot.create(:post, user: user_2, title: Faker::HowIMetYourMother.high_five, content: Faker::HowIMetYourMother.quote)
user_2_post_4 = FactoryBot.create(:post, user: user_2, title: Faker::HowIMetYourMother.high_five, content: Faker::HowIMetYourMother.quote)

FactoryBot.create(:comment, post: user_1_post_1, user: user_3)
FactoryBot.create(:comment, post: user_2_post_1, user: user_3)
FactoryBot.create(:comment, post: user_2_post_3, user: user_3)

FactoryBot.create(:comment, post: user_2_post_4, user: user_1)
FactoryBot.create(:comment, post: user_2_post_3, user: user_1)
