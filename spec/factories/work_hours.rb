# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :work_hour do
    meshblock_id 1
    census_year_id 1
    fifty_to_fiftynine 1
    fourty_to_fourtynine 1
    not_elsewhere_included 1
    one_to_nine 1
    sixty_or_more 1
    ten_to_nineteen 1
    thirty_to_thirtynine 1
    total 1
    total_stated 1
    twenty_to_twentynine "MyString"
  end
end
