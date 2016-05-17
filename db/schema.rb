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

ActiveRecord::Schema.define(version: 20160517082212) do

  create_table "about_pages", force: :cascade do |t|
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
    t.string   "about"
    t.text     "vision"
    t.text     "mission"
    t.text     "extra"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.text     "who_we_are"
    t.text     "what_we_do"
  end

  create_table "banner_sections", force: :cascade do |t|
    t.string   "banner_img_file_name"
    t.string   "banner_img_content_type"
    t.integer  "banner_img_file_size"
    t.datetime "banner_img_updated_at"
    t.string   "banner_heading",          limit: 100
    t.string   "banner_button_text",      limit: 20
    t.string   "banner_button_url"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "banner_button2_text",     limit: 20
    t.string   "banner_button2_url"
  end

  create_table "capsule_classes", force: :cascade do |t|
    t.string   "title"
    t.date     "starting_date"
    t.string   "duration"
    t.text     "benifits"
    t.string   "guest_lecturer"
    t.boolean  "display",        default: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "capsule_learners", force: :cascade do |t|
    t.integer  "capsule_class_id"
    t.string   "name"
    t.string   "email"
    t.string   "phone_number"
    t.string   "educational_status"
    t.string   "company_name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "carrer_pages", force: :cascade do |t|
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
    t.string   "heading"
    t.string   "highlight_img1_file_name"
    t.string   "highlight_img1_content_type"
    t.integer  "highlight_img1_file_size"
    t.datetime "highlight_img1_updated_at"
    t.string   "highlight_h1"
    t.string   "highlight_p1"
    t.string   "highlight_img2_file_name"
    t.string   "highlight_img2_content_type"
    t.integer  "highlight_img2_file_size"
    t.datetime "highlight_img2_updated_at"
    t.string   "highlight_h2"
    t.string   "highlight_p2"
    t.string   "highlight_img3_file_name"
    t.string   "highlight_img3_content_type"
    t.integer  "highlight_img3_file_size"
    t.datetime "highlight_img3_updated_at"
    t.string   "highlight_h3"
    t.string   "highlight_p3"
    t.string   "highlight_img4_file_name"
    t.string   "highlight_img4_content_type"
    t.integer  "highlight_img4_file_size"
    t.datetime "highlight_img4_updated_at"
    t.string   "highlight_h4"
    t.string   "highlight_p4"
    t.string   "hr_heading"
    t.string   "hr_email"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "contact_pages", force: :cascade do |t|
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
    t.string   "img_heading"
    t.string   "img_sub_heading"
    t.string   "anthem_heading"
    t.string   "anthem_sub_heading"
    t.string   "contact_person_name"
    t.string   "contact_person_email"
    t.string   "contact_person_phone"
    t.string   "career_url"
    t.string   "career_text"
    t.string   "address"
    t.string   "map_longitude"
    t.string   "map_latitude"
    t.string   "bottom_heading"
    t.string   "bottom_subheading"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "corporate_trainer_headings", force: :cascade do |t|
    t.string   "heading"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "corporate_trainers", force: :cascade do |t|
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
    t.string   "name",             limit: 100
    t.string   "designation",      limit: 100
    t.string   "extra",            limit: 249
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "twitter"
    t.string   "linkedin"
  end

  create_table "corporate_trainers_courses", id: false, force: :cascade do |t|
    t.integer "corporate_trainer_id"
    t.integer "course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.integer  "position"
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
    t.string   "name",              limit: 150
    t.string   "duration",          limit: 100
    t.date     "batch_starting_on"
    t.string   "fee",               limit: 200
    t.text     "highlights"
    t.text     "overview"
    t.text     "course_benifits"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.text     "curriculum"
  end

  create_table "fee_structures", force: :cascade do |t|
    t.integer  "course_id"
    t.string   "major_category"
    t.string   "category"
    t.string   "amount"
    t.string   "timing"
    t.string   "additional_tnc"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "free_study_materials", force: :cascade do |t|
    t.integer  "capsule_class_id"
    t.string   "title"
    t.string   "pdf_file_name"
    t.string   "pdf_content_type"
    t.integer  "pdf_file_size"
    t.datetime "pdf_updated_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "learners", force: :cascade do |t|
    t.string   "name"
    t.string   "email",              limit: 100
    t.string   "phone_number",       limit: 15
    t.integer  "course_id"
    t.string   "course_type",        limit: 30
    t.string   "educational_status"
    t.string   "company_name"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "learners", ["course_id"], name: "index_learners_on_course_id"

  create_table "logo_texts", force: :cascade do |t|
    t.string   "logo_bottom_text"
    t.string   "url"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "menu_items", force: :cascade do |t|
    t.string   "title"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pm_headings", force: :cascade do |t|
    t.string   "heading"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pm_logos", force: :cascade do |t|
    t.integer  "position"
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "pm_texts", force: :cascade do |t|
    t.text     "bottom_text", limit: 400
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "policy_hedings", force: :cascade do |t|
    t.string   "heading"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "position"
  end

  create_table "policy_sub_hedings", force: :cascade do |t|
    t.integer  "policy_heding_id"
    t.string   "sub_heading"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "positions", force: :cascade do |t|
    t.integer  "rank"
    t.string   "position_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "requirement_categories", force: :cascade do |t|
    t.integer  "rank"
    t.integer  "position_id"
    t.string   "requirement_name"
    t.text     "role_and_responsibilities"
    t.text     "what_we_are_looking_for"
    t.string   "hr_email"
    t.string   "hr_number"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "requirement_categories", ["position_id"], name: "index_requirement_categories_on_position_id"

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "mmail"
    t.text     "mmessage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "img_file_name"
    t.string   "img_content_type"
    t.integer  "img_file_size"
    t.datetime "img_updated_at"
    t.string   "name"
    t.string   "designation"
    t.string   "link"
    t.string   "quote"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "term_pages", force: :cascade do |t|
    t.text     "script"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testimonials", force: :cascade do |t|
    t.string   "name"
    t.string   "content"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "admin",                  default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
