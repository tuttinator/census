# == Schema Information
#
# Table name: work_hours
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  one_to_nine            :integer
#  ten_to_nineteen        :integer
#  twenty_to_twenty_nine  :integer
#  thirty_to_thirty_nine  :integer
#  forty_to_forty_nine    :integer
#  fifty_to_fifty_nine    :integer
#  sixty_or_more          :integer
#  not_elsewhere_included :integer
#  total                  :integer
#  total_stated           :integer
#  created_at             :datetime
#  updated_at             :datetime
#

class WorkHour < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
