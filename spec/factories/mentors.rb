# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :mentor do
    location_id 1
    fb_user_id "MyString"
    fb_token "MyText"
    fb_token_secret "MyText"
    grade 1
    rank 1
    is_applicant false
    is_addmin false
  end
end
