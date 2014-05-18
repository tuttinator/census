# == Schema Information
#
# Table name: family_income_sources
#
#  id                          :integer          not null, primary key
#  meshblock_id                :integer
#  census_year_id              :integer
#  domestic_purposes           :integer
#  interest                    :integer
#  invalids                    :integer
#  nz_super                    :integer
#  other                       :integer
#  other_government_benefits   :integer
#  other_super                 :integer
#  self_employment_or_business :integer
#  sickness                    :integer
#  student_allowance           :integer
#  unemployment                :integer
#  wages                       :integer
#  work_accident_insurer       :integer
#  no_source                   :integer
#  not_stated                  :integer
#  total                       :integer
#  total_stated                :integer
#  created_at                  :datetime
#  updated_at                  :datetime
#

class FamilyIncomeSource < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
