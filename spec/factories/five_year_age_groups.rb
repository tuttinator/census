# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :five_year_age_group, :class => 'FiveYearAgeGroups' do
    meshblock_id 1
    census_year_id 1
    zero_to_four_year_olds 1
    five_to_nine_year_olds 1
    ten_to_fourteen_year_olds 1
    fifteen_to_nineteen_year_olds 1
    twenty_to_twenty_four_year_olds 1
    twenty_five_to_twenty_nine_year_olds 1
    thirty_to_thirty_four_year_olds 1
    thirty_five_to_thirty_nine_year_olds 1
    forty_to_forty_four_year_olds 1
    forty_five_to_forty_nine_year_olds 1
    fifty_to_fifty_four_year_olds 1
    fifty_five_to_fifty_nine_year_olds 1
    sixty_to_sixty_four_year_olds 1
    sixty_five_years_and_older 1
    median 1
    total 1
  end
end
