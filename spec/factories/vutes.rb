FactoryGirl.define do
  factory :vute do
    keyword Faker::Hacker.say_something_smart
    user
  end
end
