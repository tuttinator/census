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

ActiveRecord::Schema.define(version: 20140425115022) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "area_units", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "census_years", force: true do |t|
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "community_boards", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "land_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meshblocks", force: true do |t|
    t.integer "area_unit_id"
    t.integer "urban_authority_id"
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
    t.spatial "shape",                                  limit: {:srid=>3857, :type=>"multi_polygon"}
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

end
