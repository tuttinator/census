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

class Telecomunication < ActiveRecord::Base
  belongs_to :meshblock
  belongs_to :census_year

  validates :meshblock, presence: true
  validates :census_year, presence: true
end
