# == Schema Information
#
# Table name: night_populations
#
#  id             :integer          not null, primary key
#  meshblock_id   :integer
#  census_year_id :integer
#  residents      :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class NightPopulation < ActiveRecord::Base
end
