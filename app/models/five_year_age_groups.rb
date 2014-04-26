# == Schema Information
#
# Table name: five_year_age_groups
#
#  id                                   :integer          not null, primary key
#  meshblock_id                         :integer
#  census_year_id                       :integer
#  zero_to_four_year_olds               :integer
#  five_to_nine_year_olds               :integer
#  ten_to_fourteen_year_olds            :integer
#  fifteen_to_nineteen_year_olds        :integer
#  twenty_to_twenty_four_year_olds      :integer
#  twenty_five_to_twenty_nine_year_olds :integer
#  thirty_to_thirty_four_year_olds      :integer
#  thirty_five_to_thirty_nine_year_olds :integer
#  forty_to_forty_four_year_olds        :integer
#  forty_five_to_forty_nine_year_olds   :integer
#  fifty_to_fifty_four_year_olds        :integer
#  fifty_five_to_fifty_nine_year_olds   :integer
#  sixty_to_sixty_four_year_olds        :integer
#  sixty_five_years_and_older           :integer
#  median                               :integer
#  total                                :integer
#  created_at                           :datetime
#  updated_at                           :datetime
#

class FiveYearAgeGroups < ActiveRecord::Base
end
