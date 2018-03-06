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

ActiveRecord::Schema.define(version: 20180126071333) do

  create_table "merged_data_tbl", primary_key: ["ctrlr_serial_no", "updated_date", "updated_time"], force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "request_type"
    t.string "ctrlr_serial_no", null: false
    t.string "updated_date", null: false
    t.time "updated_time", null: false
    t.string "added_date"
    t.time "added_time"
    t.string "dvalue1"
    t.string "dvalue2"
    t.string "dvalue3"
    t.string "dvalue4"
    t.string "dvalue5"
    t.string "dvalue6"
    t.string "dvalue7"
    t.string "dvalue8"
    t.string "dvalue9"
    t.string "dvalue10"
    t.string "dvalue11"
    t.string "dvalue12"
    t.string "dvalue13"
    t.string "dvalue14"
    t.string "dvalue15"
    t.string "dvalue16"
    t.string "dvalue17"
    t.string "dvalue18"
    t.string "dvalue19"
    t.string "fault"
    t.string "avalue1"
    t.string "avalue2"
    t.string "avalue3"
    t.string "avalue4"
    t.string "avalue5"
    t.string "avalue6"
    t.string "cvalue1"
    t.string "cvalue2"
    t.string "cvalue3"
    t.string "cvalue4"
    t.string "cvalue5"
    t.string "cvalue6"
    t.string "elvalue1"
    t.string "elvalue2"
    t.string "elvalue3"
    t.string "elvalue4"
    t.string "elvalue5"
    t.string "elvalue6"
    t.string "elvalue7"
    t.string "elvalue8"
    t.string "elvalue9"
    t.string "elvalue10"
    t.string "elvalue11"
    t.string "elvalue12"
    t.string "elvalue13"
    t.string "elvalue14"
    t.string "elvalue15"
    t.string "elvalue16"
    t.string "elvalue17"
    t.string "elvalue18"
    t.string "elvalue19"
    t.string "elvalue20"
    t.string "elvalue21"
    t.string "elvalue22"
    t.string "elvalue23"
    t.string "elvalue24"
    t.string "elvalue25"
    t.string "elvalue26"
    t.string "elvalue27"
    t.string "elvalue28"
    t.string "elvalue29"
    t.string "elvalue30"
    t.string "elvalue31"
    t.string "elvalue32"
    t.string "status1"
    t.string "status2"
    t.string "status3"
    t.string "status4"
    t.string "status5"
    t.string "status6"
    t.string "digital_event_status"
    t.string "display_flag"
    t.string "kwh_ch1"
    t.string "cur_ch1"
    t.string "kwh_ch2"
    t.string "cur_ch2"
    t.string "kwh_ch3"
    t.string "cur_ch3"
    t.string "kwh_ch4"
    t.string "cur_ch4"
    t.string "vol"
    t.string "watts_ch1"
    t.string "watts_ch2"
    t.string "watts_ch3"
    t.string "watts_ch4"
    t.string "battery_vol"
    t.string "mid_batt_bank1_vol"
    t.string "mid_batt_bank2_vol"
    t.string "batt_bank1_vol"
    t.string "batt_bank2_vol"
    t.string "batt_bank1_current"
    t.string "batt_bank2_current"
    t.string "total_current"
    t.string "batt_room_temp"
    t.string "charging_kwh"
    t.string "discharging_kwh"
    t.string "discharging_ah_bb1"
    t.string "discharging_ah_bb2"
    t.string "charging_hour"
    t.string "charging_minute"
    t.string "discharging_hour"
    t.string "discharging_minute"
    t.string "charge_discharge_count"
    t.string "battery_stored_charge"
    t.string "eb_run_hrs"
    t.string "eb_run_min"
    t.string "dg_run_hrs"
    t.string "dg_run_min"
    t.string "dg_on_time"
    t.string "gd_on_status"
    t.string "battery_1ah"
    t.string "battery_2ah"
    t.string "charging_current_limit"
    t.string "cellunbalanced_volt"
    t.string "number_of_batt_string"
    t.string "soc_to_turn_on_dg"
    t.string "soc_off_dg"
    t.string "gab_soc"
    t.string "gab_num_cells"
    t.string "gab_problem_cells"
    t.string "gab_battery_run_hrs"
    t.string "charge_discharge_status"
    t.string "unbal_batt_bank1_status"
    t.string "unbal_batt_bank2_status"
    t.string "dg_stop_fail"
    t.string "dg_start_fail"
    t.string "eb_on_off"
    t.string "eb_on_false"
    t.string "dg_hi_temp"
    t.string "enable_dg_on_soc"
    t.string "bank_door_open"
    t.string "bank_door_close"
    t.string "ambient_temp_high"
    t.string "string_vol_low"
    t.string "string_vol_high"
    t.string "string_current_high"
    t.string "string_device_comm_fail"
    t.string "cell_comm_fail"
    t.string "cell_vol_low"
    t.string "cell_vol_high"
    t.string "cell_temp_high"
    t.string "capacitance", null: false
    t.string "level_in_mm", null: false
    t.string "fuel_in_litres", null: false
    t.string "dg_runhrs_in_min", null: false
    t.string "dg_on_off_status", null: false
    t.string "fuel_added", null: false
    t.string "fuel_consumed", null: false
    t.string "fuel_theft", null: false
    t.string "vibration_status", null: false
    t.index ["ctrlr_serial_no"], name: "merged_data_tbl_index"
  end

  create_table "mymodels", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "towerems", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
