# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140426041203) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "anzic96_industries", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "accommodation_cafes_and_restaurants"
    t.integer  "agriculture_forestry_and_fishing"
    t.integer  "communication_services"
    t.integer  "construction"
    t.integer  "culture_and_recreational_services"
    t.integer  "education"
    t.integer  "electricity_gas_and_water_supply"
    t.integer  "finance_and_insurance"
    t.integer  "government_admin_and_defence"
    t.integer  "health_and_community_services"
    t.integer  "manufacturing"
    t.integer  "mining"
    t.integer  "not_elsewhere_included"
    t.integer  "personal_and_other_services"
    t.integer  "property_and_business_services"
    t.integer  "retail_trade"
    t.integer  "total"
    t.integer  "total_stated"
    t.integer  "transport_and_storage"
    t.integer  "wholesale_trade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "anzic96_workplace_industries", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "accommodation_cafes_and_restaurants"
    t.integer  "agriculture_forestry_and_fishing"
    t.integer  "communication_services"
    t.integer  "construction"
    t.integer  "culture_and_recreational_services"
    t.integer  "education"
    t.integer  "electricity_gas_and_water_supply"
    t.integer  "finance_and_insurance"
    t.integer  "government_admin_and_defence"
    t.integer  "health_and_community_services"
    t.integer  "manufacturing"
    t.integer  "mining"
    t.integer  "not_elsewhere_included"
    t.integer  "personal_and_other_services"
    t.integer  "property_and_business_services"
    t.integer  "retail_trade"
    t.integer  "total"
    t.integer  "total_stated"
    t.integer  "transport_and_storage"
    t.integer  "wholesale_trade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "anzsco_occupations", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "clerical_and_admin"
    t.integer  "community_and_personal_service"
    t.integer  "labourers"
    t.integer  "machinery_operators_and_drivers"
    t.integer  "managers"
    t.integer  "not_elsewhere_included"
    t.integer  "professionals"
    t.integer  "sales"
    t.integer  "technicians_and_trade_workers"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "anzsco_workplace_occupations", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "clerical_and_admin"
    t.integer  "community_and_personal_service"
    t.integer  "labourers"
    t.integer  "machinery_operators_and_drivers"
    t.integer  "managers"
    t.integer  "not_elsewhere_included"
    t.integer  "professionals"
    t.integer  "sales"
    t.integer  "technicians_and_trade_workers"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "anzsic06_industries", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "accomodation_and_food"
    t.integer  "admin_and_support"
    t.integer  "agriculture_forestry_and_fishing"
    t.integer  "arts_and_recreation"
    t.integer  "construction"
    t.integer  "education_and_training"
    t.integer  "electricity_gas_water_and_waster_services"
    t.integer  "financial_and_insurance"
    t.integer  "health_care_and_social_assistance"
    t.integer  "information_media_and_telecoms"
    t.integer  "manufacturing"
    t.integer  "mining"
    t.integer  "professional_scientific_and_technical"
    t.integer  "public_admin_and_safety"
    t.integer  "rental_hiring_and_real_estate"
    t.integer  "retail"
    t.integer  "transport_postal_and_warehousing"
    t.integer  "wholesale"
    t.integer  "other"
    t.integer  "not_elsewhere_included"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "area_units", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "arrival_years", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "zero_to_nine_years"
    t.integer  "ten_to_nineteen_years"
    t.integer  "twenty_to_twenty_nine_years"
    t.integer  "thirty_to_thirty_nine_years"
    t.integer  "forty_to_forty_nine_years"
    t.integer  "fifty_years_or_more"
    t.integer  "not_elsewhere_included"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "birthplaces", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "new_zealand"
    t.integer  "overseas"
    t.integer  "not_elsewhere_included"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "broad_age_groups", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "under_fifteen_years"
    t.integer  "fifteen_to_sixtyfour_year_olds"
    t.integer  "sixtyfive_years_and_older"
    t.integer  "total_people"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "census_years", force: true do |t|
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "children", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "none"
    t.integer  "one"
    t.integer  "two"
    t.integer  "three"
    t.integer  "four"
    t.integer  "five"
    t.integer  "six_or_more"
    t.integer  "object"
    t.integer  "not_elsewhere_included"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "community_boards", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "descendants", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "dont_know"
    t.integer  "maori"
    t.integer  "no_maori"
    t.integer  "not_elsewhere_included"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dwellings", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "separate_houses"
    t.integer  "two_or_more_flats"
    t.integer  "not_further_defined"
    t.integer  "other_types"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employment_statuses", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "employer"
    t.integer  "paid_employee"
    t.integer  "self_employed_without_employee"
    t.integer  "unpaid_family_worker"
    t.integer  "not_elsewhere_included"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ethnicities", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "asians"
    t.integer  "europeans"
    t.integer  "maoris"
    t.integer  "melaas"
    t.integer  "not_elsewhere_included"
    t.integer  "pasifikas"
    t.integer  "others"
    t.integer  "total_stated"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "families", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "families"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "family_income_sources", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "domestic_purposes"
    t.integer  "interest"
    t.integer  "invalids"
    t.integer  "nz_super"
    t.integer  "other"
    t.integer  "other_government_benefits"
    t.integer  "other_super"
    t.integer  "self_employment_or_business"
    t.integer  "sickness"
    t.integer  "student_allowance"
    t.integer  "unemployment"
    t.integer  "wages"
    t.integer  "work_accident_insurer"
    t.integer  "no_source"
    t.integer  "not_stated"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "family_incomes", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "not_stated"
    t.integer  "twenty_thousand_or_less"
    t.integer  "twenty_to_thirty_thousand"
    t.integer  "thirty_to_fifty_thousand"
    t.integer  "fifty_to_seventy_thousand"
    t.integer  "seventy_to_one_hundred_thousand"
    t.integer  "one_hundred_thousand_or_more"
    t.integer  "median"
    t.integer  "total_stated"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "family_types", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "couple_with_children"
    t.integer  "couple_without_children"
    t.integer  "one_parent"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "five_year_age_groups", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "zero_to_four_year_olds"
    t.integer  "five_to_nine_year_olds"
    t.integer  "ten_to_fourteen_year_olds"
    t.integer  "fifteen_to_nineteen_year_olds"
    t.integer  "twenty_to_twenty_four_year_olds"
    t.integer  "twenty_five_to_twenty_nine_year_olds"
    t.integer  "thirty_to_thirty_four_year_olds"
    t.integer  "thirty_five_to_thirty_nine_year_olds"
    t.integer  "forty_to_forty_four_year_olds"
    t.integer  "forty_five_to_forty_nine_year_olds"
    t.integer  "fifty_to_fifty_four_year_olds"
    t.integer  "fifty_five_to_fifty_nine_year_olds"
    t.integer  "sixty_to_sixty_four_year_olds"
    t.integer  "sixty_five_years_and_older"
    t.integer  "median"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "five_year_ago_residences", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "not_elsewhere_included"
    t.integer  "no_abode"
    t.integer  "not_born"
    t.integer  "overseas"
    t.integer  "same"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "household_compositions", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "one_person"
    t.integer  "one_family"
    t.integer  "two_family"
    t.integer  "three_family"
    t.integer  "other_multi"
    t.integer  "total"
    t.integer  "total_stated"
    t.integer  "unidentifiable"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "household_income_sources", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "domestic_purposes"
    t.integer  "interest"
    t.integer  "invalids"
    t.integer  "no_source"
    t.integer  "not_stated"
    t.integer  "nz_super"
    t.integer  "other"
    t.integer  "other_government_benefits"
    t.integer  "other_super"
    t.integer  "self_employment_or_business"
    t.integer  "sickness"
    t.integer  "student_allowance"
    t.integer  "total"
    t.integer  "total_households_stated"
    t.integer  "unemployment"
    t.integer  "wages"
    t.integer  "work_accident_insurer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "household_incomes", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "twenty_thousand_or_less"
    t.integer  "twenty_to_thirty_thousand"
    t.integer  "thirty_to_fifty_thousand"
    t.integer  "fifty_to_seventy_thousand"
    t.integer  "seventy_to_one_hundred_thousand"
    t.integer  "one_hundred_thousand_or_more"
    t.integer  "not_stated"
    t.integer  "median"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "household_tenures", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "family_trust"
    t.integer  "not_owned"
    t.integer  "owned"
    t.integer  "not_elsewhere_included"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "households", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "households"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "income_sources", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "accident_insurer"
    t.integer  "dividends"
    t.integer  "domestic_purposes_benefit"
    t.integer  "invalids_benefit"
    t.integer  "no_source"
    t.integer  "not_stated"
    t.integer  "other_government_benefits"
    t.integer  "other_sources"
    t.integer  "other_super"
    t.integer  "self_employed"
    t.integer  "sickness_benefit"
    t.integer  "student_allowance"
    t.integer  "super_annuation"
    t.integer  "unemployment_benefit"
    t.integer  "wages"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "labour_statuses", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "full_time"
    t.integer  "part_time"
    t.integer  "unemployed"
    t.integer  "not_in_the_labour_force"
    t.integer  "status_unidentifiable"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "land_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "landlord_sectors", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "housing_new_zealand"
    t.integer  "local_authority_or_city_council"
    t.integer  "private_person_trust_or_business"
    t.integer  "stated_owned"
    t.integer  "not_elsewhere_included"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "languages", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "english"
    t.integer  "maori"
    t.integer  "samoan"
    t.integer  "sign"
    t.integer  "too_young"
    t.integer  "not_elsewhere_included"
    t.integer  "other"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meshblocks", force: true do |t|
    t.integer "area_unit_id"
    t.integer "urban_area_id"
    t.integer "territorial_authority_id"
    t.integer "ward_id"
    t.integer "community_board_id"
    t.integer "territorial_authority_subdivision_id"
    t.integer "regional_council_id"
    t.integer "regional_council_constituency_id"
    t.integer "regional_council_maori_constituency_id"
    t.integer "land_type_id"
    t.decimal "shape_length"
    t.decimal "shape_area"
    t.spatial "shape"
  end

  create_table "motor_vehicles", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "one"
    t.integer  "two"
    t.integer  "three_or_more"
    t.integer  "none"
    t.integer  "not_elsewhere_included"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "night_populations", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "residents"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nzsc_occupations", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "agriculture_and_fishery_workers"
    t.integer  "clerks"
    t.integer  "elementary_occupations"
    t.integer  "legislators_admins_and_managers"
    t.integer  "plant_and_machine_operators"
    t.integer  "professionals"
    t.integer  "service_and_sales_workers"
    t.integer  "technicians_and_associate_professionals"
    t.integer  "total"
    t.integer  "trades_workers"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nzsc_workplace_occupations", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "agriculture_and_fishery_workers"
    t.integer  "clerks"
    t.integer  "elementary_occupations"
    t.integer  "legislators_admins_and_managers"
    t.integer  "plant_and_machine_operators"
    t.integer  "professionals"
    t.integer  "service_and_sales_workers"
    t.integer  "technicians_and_associate_professionals"
    t.integer  "total"
    t.integer  "trades_workers"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "partnerships", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "non_partnered"
    t.integer  "not_stated"
    t.integer  "partnered"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personal_incomes", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "five_thousand_or_less"
    t.integer  "five_to_ten_thousand"
    t.integer  "ten_to_twenty_thousand"
    t.integer  "twenty_to_thirty_thousand"
    t.integer  "thirty_to_fifty_thousand"
    t.integer  "fifty_thousand_or_more"
    t.integer  "median"
    t.integer  "not_stated"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "qualifications", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "doctortates"
    t.integer  "level_five_or_six"
    t.integer  "level_four"
    t.integer  "level_one"
    t.integer  "level_seven"
    t.integer  "level_three"
    t.integer  "level_two"
    t.integer  "masters"
    t.integer  "no_qualification"
    t.integer  "not_elsewhere_included"
    t.integer  "overseas_secondary"
    t.integer  "postgraduate"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regional_council_constituencies", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regional_council_maori_constituencies", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "regional_councils", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "married"
    t.integer  "never_married"
    t.integer  "not_elsewhere_included"
    t.integer  "separated"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "religions", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "buddhist"
    t.integer  "christian"
    t.integer  "hindu"
    t.integer  "jewish"
    t.integer  "maori_christian"
    t.integer  "muslim"
    t.integer  "spiritual"
    t.integer  "other"
    t.integer  "no_religion"
    t.integer  "object"
    t.integer  "not_elsewhere_included"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "residence_years", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "thirty_years_or_more"
    t.integer  "fifteen_to_twenty_nine_years"
    t.integer  "five_to_nine_years"
    t.integer  "not_elsewhere_included"
    t.integer  "one_to_four_years"
    t.integer  "ten_to_fourteen_years"
    t.integer  "total"
    t.integer  "total_people"
    t.integer  "zero_years"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sexes", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "females"
    t.integer  "males"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "smokers", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "ex"
    t.integer  "never"
    t.integer  "not_elsewhere_included"
    t.integer  "regular"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "study_participations", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "full_and_part_time"
    t.integer  "full_time"
    t.integer  "not_stated"
    t.integer  "not_studying"
    t.integer  "part_time"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "telecomunications", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "fax"
    t.integer  "internet"
    t.integer  "mobile"
    t.integer  "no_access"
    t.integer  "telephone"
    t.integer  "not_elsewhere_included"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tenures", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "do_not_own"
    t.integer  "not_elsewhere_included"
    t.integer  "own_or_partly_own"
    t.integer  "total_people"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "territorial_authorities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "territorial_authority_subdivisions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "travel_methods", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "bicycle"
    t.integer  "drove_company_car"
    t.integer  "drove_private_car"
    t.integer  "motor_cycle"
    t.integer  "passenger"
    t.integer  "public_bus"
    t.integer  "train"
    t.integer  "walked_or_jogged"
    t.integer  "at_home"
    t.integer  "did_not_go"
    t.integer  "other"
    t.integer  "not_elsewhere_included"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unpaid_activities", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "household"
    t.integer  "looking_after_child_not_own_household"
    t.integer  "looking_after_child_own_household"
    t.integer  "looking_after_not_own_household_member_who_is_ill_or_disable"
    t.integer  "looking_after_own_household_member_who_is_ill_or_disabled"
    t.integer  "none"
    t.integer  "not_elsewhere_included"
    t.integer  "voluntary"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "urban_areas", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usual_residents", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "one"
    t.integer  "two"
    t.integer  "three"
    t.integer  "four"
    t.integer  "five"
    t.integer  "six"
    t.integer  "seven"
    t.integer  "eight"
    t.integer  "mean"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wards", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "weekly_rents", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "median"
    t.integer  "not_elsewhere_included"
    t.integer  "under_one_hundred"
    t.integer  "one_hundred_to_one_forty_nine"
    t.integer  "one_fifty_to_one_ninety_nine"
    t.integer  "two_hundred_to_two_forty_nine"
    t.integer  "two_fifty_to_two_ninety_nine"
    t.integer  "three_hundred_to_three_forty_nine"
    t.integer  "three_fifty_and_over"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "work_hours", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "one_to_nine"
    t.integer  "ten_to_nineteen"
    t.integer  "twenty_to_twenty_nine"
    t.integer  "thirty_to_thirty_nine"
    t.integer  "forty_to_forty_nine"
    t.integer  "fifty_to_fifty_nine"
    t.integer  "sixty_or_more"
    t.integer  "not_elsewhere_included"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "work_statuses", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "full_time"
    t.integer  "part_time"
    t.integer  "not_in_the_labour_force"
    t.integer  "status_unidentifiable"
    t.integer  "total"
    t.integer  "total_stated"
    t.integer  "unemployed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workplace_travel_methods", force: true do |t|
    t.integer  "meshblock_id"
    t.integer  "census_year_id"
    t.integer  "bicycle"
    t.integer  "drove_company_car"
    t.integer  "drove_private_car"
    t.integer  "motor_cycle"
    t.integer  "passenger"
    t.integer  "public_bus"
    t.integer  "train"
    t.integer  "walked_or_jogged"
    t.integer  "at_home"
    t.integer  "did_not_go"
    t.integer  "other"
    t.integer  "not_elsewhere_included"
    t.integer  "total"
    t.integer  "total_stated"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
