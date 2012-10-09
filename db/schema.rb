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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121009130257) do

  create_table "addresses", :force => true do |t|
    t.integer  "user_id"
    t.integer  "phone"
    t.string   "street"
    t.string   "place"
    t.text     "state"
    t.text     "country"
    t.text     "narration"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "controller_actions", :force => true do |t|
    t.string   "controller"
    t.string   "action"
    t.boolean  "boolean"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.boolean  "is_browser_page"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.boolean  "status"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "default_settings", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "degrees", :force => true do |t|
    t.string   "name"
    t.boolean  "status"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "education_institution_groups", :force => true do |t|
    t.string   "name"
    t.string   "status"
    t.integer  "created_by"
    t.integer  "approved_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "education_institutions", :force => true do |t|
    t.string   "name"
    t.string   "status"
    t.integer  "education_institution_group_id"
    t.integer  "created_by"
    t.integer  "approved_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_bank_details", :force => true do |t|
    t.integer  "employee_id"
    t.string   "bank_id"
    t.string   "acc_no"
    t.boolean  "status"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_education_details", :force => true do |t|
    t.integer  "employee_id"
    t.integer  "degree_id"
    t.integer  "institution"
    t.integer  "university"
    t.integer  "month_id"
    t.integer  "year_id"
    t.string   "grade"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_experiences", :force => true do |t|
    t.integer  "employee_id"
    t.string   "company_name"
    t.float    "duration"
    t.date     "from"
    t.date     "to"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_family_details", :force => true do |t|
    t.integer  "employee_id"
    t.string   "name"
    t.integer  "relationship_id"
    t.datetime "date_of_birth"
    t.integer  "age"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_types", :force => true do |t|
    t.string   "name"
    t.boolean  "status"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.integer  "personnel_id"
    t.integer  "employee_type_id"
    t.integer  "job_grade_id"
    t.date     "date_of_joining"
    t.integer  "manager_id"
    t.string   "email_id"
    t.integer  "employeement_status_id"
    t.integer  "notice_period"
    t.boolean  "pf_applicable",          :default => true
    t.boolean  "esi_applicable",         :default => true
    t.string   "pan_number"
    t.string   "passport_no"
    t.string   "driving_licence_number"
    t.boolean  "status"
    t.integer  "leave_category_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employment_statuses", :force => true do |t|
    t.string   "name"
    t.boolean  "status"
    t.integer  "stage"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_grades", :force => true do |t|
    t.string   "name"
    t.boolean  "status"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leave_categories", :force => true do |t|
    t.string   "name"
    t.boolean  "status"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leave_profiles", :force => true do |t|
    t.integer  "leave_type_id"
    t.integer  "leave_category_id"
    t.float    "total_leave"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "leave_types", :force => true do |t|
    t.string   "name"
    t.boolean  "status"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "status"
    t.integer  "created_by"
    t.integer  "approved_by"
    t.integer  "education_institution_id"
    t.boolean  "is_default"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "marital_statuses", :force => true do |t|
    t.string   "name"
    t.boolean  "status"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_container_menu_links", :force => true do |t|
    t.integer  "menu_container_id"
    t.integer  "menu_link_id"
    t.integer  "created_by"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_containers", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "container_position"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_group_menu_containers", :force => true do |t|
    t.integer  "menu_group_id"
    t.integer  "menu_container_id"
    t.integer  "created_by"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_groups", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "role_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_links", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "controller"
    t.string   "action"
    t.string   "path"
    t.string   "method"
    t.string   "status"
    t.integer  "module_context_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "module_contexts", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "status"
    t.string   "approved_by"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "personnels", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "middle_name"
    t.integer  "marital_status_id"
    t.integer  "title_id"
    t.string   "father_name"
    t.string   "gaurdian_name"
    t.integer  "gaurdian_relation_id"
    t.datetime "date_of_birth"
    t.integer  "age"
    t.integer  "height"
    t.integer  "blood_group"
    t.integer  "location_id"
    t.date     "aniversary_date"
    t.integer  "religion_id"
    t.integer  "nationality_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationships", :force => true do |t|
    t.string   "name"
    t.boolean  "status"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "religions", :force => true do |t|
    t.string   "name"
    t.boolean  "status"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "priority"
    t.boolean  "status"
    t.string   "remarks"
    t.integer  "created_by"
    t.datetime "created_on"
    t.integer  "approved_by"
    t.datetime "approved_on"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "controller"
    t.string   "action"
  end

  create_table "titles", :force => true do |t|
    t.string   "name"
    t.boolean  "status"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "location_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :force => true do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.string   "status"
    t.string   "remarks"
    t.integer  "created_by"
    t.datetime "created_on"
    t.integer  "approved_by"
    t.datetime "approved_on"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
