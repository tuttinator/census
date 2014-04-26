# == Schema Information
#
# Table name: languages
#
#  id                     :integer          not null, primary key
#  meshblock_id           :integer
#  census_year_id         :integer
#  english                :integer
#  maori                  :integer
#  samoan                 :integer
#  sign                   :integer
#  too_young              :integer
#  not_elsewhere_included :integer
#  other                  :integer
#  total                  :integer
#  total_stated           :integer
#  created_at             :datetime
#  updated_at             :datetime
#

require 'spec_helper'

describe Language do
  pending "add some examples to (or delete) #{__FILE__}"
end
