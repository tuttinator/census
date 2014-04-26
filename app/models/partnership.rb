# == Schema Information
#
# Table name: partnerships
#
#  id             :integer          not null, primary key
#  meshblock_id   :integer
#  census_year_id :integer
#  non_partnered  :integer
#  not_stated     :integer
#  partnered      :integer
#  total          :integer
#  total_stated   :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class Partnership < ActiveRecord::Base
end
