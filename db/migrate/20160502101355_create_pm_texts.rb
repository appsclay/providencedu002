class CreatePmTexts < ActiveRecord::Migration
  def change
    create_table :pm_texts do |t|
      t.text :bottom_text,limit: 400

      t.timestamps null: false
    end
  end
end
