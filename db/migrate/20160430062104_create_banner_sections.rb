class CreateBannerSections < ActiveRecord::Migration
  def change
    create_table :banner_sections do |t|
      t.attachment :banner_img
      t.string :banner_heading, limit: 100
      t.string :banner_button_text,limit: 20
      t.string :banner_button_url

      t.timestamps null: false
    end
  end
end
