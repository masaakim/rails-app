# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    category_id 1
    name "MyString"
    description "MyText"
    url "MyString"
    start_time "2014-03-31 12:44:08"
    end_time "2014-03-31 12:44:08"
    place "MyString"
    place_url "MyString"
    staff_count 1
    is_closed false
  end
end
