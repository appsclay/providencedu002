class CreatePmLogos < ActiveRecord::Migration
  def change
    create_table :pm_logos do |t|
      t.integer :position
      t.attachment :logo

      t.timestamps null: false
    end
  end
end
