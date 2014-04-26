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

require 'spec_helper'

describe Telecomunication do
  pending "add some examples to (or delete) #{__FILE__}"
end
