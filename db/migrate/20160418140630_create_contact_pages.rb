class CreateContactPages < ActiveRecord::Migration
  def change
    create_table :contact_pages do |t|
      t.attachment :img
      t.string :img_heading
      t.string :img_sub_heading
      t.string :anthem_heading
      t.string :anthem_sub_heading
      t.string :contact_person_name
      t.string :contact_person_email
      t.string :contact_person_phone
      t.string :career_url
      t.string :career_text
      t.string :address
      t.string :map_longitude
      t.string :map_latitude
      t.string :bottom_heading
      t.string :bottom_subheading

      t.timestamps null: false
    end
  end
end
