FactoryGirl.define do
  factory :vute do
    keyword Faker::Hacker.say_something_smart
    user FactoryGirl.create(:user, name: Faker::Name.name, email: Faker::Internet.email)
  end
end
