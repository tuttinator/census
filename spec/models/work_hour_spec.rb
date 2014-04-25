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

require 'spec_helper'

describe WorkHour do
  pending "add some examples to (or delete) #{__FILE__}"
end
