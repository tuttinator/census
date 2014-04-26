# == Schema Information
#
# Table name: employment_statuses
#
#  id                             :integer          not null, primary key
#  meshblock_id                   :integer
#  census_year_id                 :integer
#  employer                       :integer
#  paid_employee                  :integer
#  self_employed_without_employee :integer
#  unpaid_family_worker           :integer
#  not_elsewhere_included         :integer
#  total                          :integer
#  total_stated                   :integer
#  created_at                     :datetime
#  updated_at                     :datetime
#

require 'spec_helper'

describe EmploymentStatus do
  pending "add some examples to (or delete) #{__FILE__}"
end
