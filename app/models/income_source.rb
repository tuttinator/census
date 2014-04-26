# == Schema Information
#
# Table name: income_sources
#
#  id                        :integer          not null, primary key
#  meshblock_id              :integer
#  census_year_id            :integer
#  accident_insurer          :integer
#  dividends                 :integer
#  domestic_purposes_benefit :integer
#  invalids_benefit          :integer
#  no_source                 :integer
#  not_stated                :integer
#  other_government_benefits :integer
#  other_sources             :integer
#  other_super               :integer
#  self_employed             :integer
#  sickness_benefit          :integer
#  student_allowance         :integer
#  super_annuation           :integer
#  unemployment_benefit      :integer
#  wages                     :integer
#  total                     :integer
#  total_stated              :integer
#  created_at                :datetime
#  updated_at                :datetime
#

class IncomeSource < ActiveRecord::Base
end
