class CreateLogoTexts < ActiveRecord::Migration
  def change
    create_table :logo_texts do |t|
      t.string :logo_bottom_text
      t.string :url

      t.timestamps null: false
    end
  end
end
