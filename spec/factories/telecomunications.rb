# == Schema Information
#
# Table name: telecomunications
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  fax                    :integer
#  internet               :integer
#  mobile                 :integer
#  no_access              :integer
#  telephone              :integer
#  not_elsewhere_included :integer
#  total                  :integer
#  total_stated           :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :telecomunication do
    meshblock_id 1
    census_year_id 1
    fax 1
    internet 1
    mobile 1
    no_access 1
    telephone 1
    not_elsewhere_included 1
    total 1
    total_stated "MyString"
  end
end
