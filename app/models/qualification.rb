# == Schema Information
#
# Table name: qualifications
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  doctortates            :integer
#  level_five_or_six      :integer
#  level_four             :integer
#  level_one              :integer
#  level_seven            :integer
#  level_three            :integer
#  level_two              :integer
#  masters                :integer
#  no_qualification       :integer
#  not_elsewhere_included :integer
#  overseas_secondary     :integer
#  postgraduate           :integer
#  total                  :integer
#  total_stated           :integer
#  created_at             :datetime
#  updated_at             :datetime
#

class Qualification < ActiveRecord::Base
end
