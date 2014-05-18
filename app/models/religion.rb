# == Schema Information
#
# Table name: religions
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  buddhist               :integer
#  christian              :integer
#  hindu                  :integer
#  jewish                 :integer
#  maori_christian        :integer
#  muslim                 :integer
#  spiritual              :integer
#  other                  :integer
#  no_religion            :integer
#  object                 :integer
#  not_elsewhere_included :integer
#  total                  :integer
#  total_stated           :integer
#  created_at             :datetime
#  updated_at             :datetime
#

class Religion < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
