class CreateCorporateTrainers < ActiveRecord::Migration
  def change
    create_table :corporate_trainers do |t|
      t.attachment :img
      t.string :name, limit: 100
      t.string :designation, limit: 100
      t.string :extra,limit: 249

      t.timestamps null: false
    end
  end
end
