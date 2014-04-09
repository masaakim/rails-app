# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :lesson do
    category_id 1
    name "MyString"
    description "MyText"
    pdf_file_path "MyText"
  end
end
