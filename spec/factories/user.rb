FactoryBot.define do
  factory :fake_user, class: 'User' do
    name { Faker::Name.name }
    username { Faker::Internet.username }
    password { Faker::Internet.password }
  end
end