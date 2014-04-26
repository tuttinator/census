# == Schema Information
#
# Table name: descendants
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  dont_know              :integer
#  maori                  :integer
#  no_maori               :integer
#  not_elsewhere_included :integer
#  total                  :integer
#  total_stated           :integer
#  created_at             :datetime
#  updated_at             :datetime
#

class Descendant < ActiveRecord::Base
end
