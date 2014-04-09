# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :report do
    assignment_id 1
    q_1 "MyText"
    q_2 "MyText"
    q_3 "MyText"
    q_4 "MyText"
    q_secret "MyText"
  end
end
