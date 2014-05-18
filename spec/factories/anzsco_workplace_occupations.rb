# == Schema Information
#
# Table name: anzsco_workplace_occupations
#
#  id                              :integer          not null, primary key
#  meshblock_id                    :integer
#  census_year_id                  :integer
#  clerical_and_admin              :integer
#  community_and_personal_service  :integer
#  labourers                       :integer
#  machinery_operators_and_drivers :integer
#  managers                        :integer
#  not_elsewhere_included          :integer
#  professionals                   :integer
#  sales                           :integer
#  technicians_and_trade_workers   :integer
#  total                           :integer
#  total_stated                    :integer
#  created_at                      :datetime
#  updated_at                      :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :anzsco_workplace_occupation do
    meshblock_id 1
    census_year_id 1
    clerical_and_admin 1
    community_and_personal_service 1
    labourers 1
    machinery_operators_and_drivers 1
    managers 1
    not_elsewhere_included 1
    professionals 1
    sales 1
    technicians_and_trade_workers 1
    total 1
    total_stated 1
  end
end
