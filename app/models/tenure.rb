# == Schema Information
#
# Table name: tenures
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  do_not_own             :integer
#  not_elsewhere_included :integer
#  own_or_partly_own      :integer
#  total_people           :integer
#  total_stated           :integer
#  created_at             :datetime
#  updated_at             :datetime
#

class Tenure < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
