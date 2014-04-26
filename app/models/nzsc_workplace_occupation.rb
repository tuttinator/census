# == Schema Information
#
# Table name: nzsc_workplace_occupations
#
#  id                                      :integer          not null, primary key
#  meshblock_id                            :integer
#  census_year_id                          :integer
#  agriculture_and_fishery_workers         :integer
#  clerks                                  :integer
#  elementary_occupations                  :integer
#  legislators_admins_and_managers         :integer
#  plant_and_machine_operators             :integer
#  professionals                           :integer
#  service_and_sales_workers               :integer
#  technicians_and_associate_professionals :integer
#  total                                   :integer
#  trades_workers                          :integer
#  created_at                              :datetime
#  updated_at                              :datetime
#

class NzscWorkplaceOccupation < ActiveRecord::Base
end
