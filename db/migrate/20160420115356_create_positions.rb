class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :rank
      t.string :position_name

      t.timestamps null: false
    end
  end
end
