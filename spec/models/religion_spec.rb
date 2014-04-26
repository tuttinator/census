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

require 'spec_helper'

describe Religion do
  pending "add some examples to (or delete) #{__FILE__}"
end
