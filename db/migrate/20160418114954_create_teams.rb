class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.attachment :img
      t.string :name
      t.string :designation
      t.string :link
      t.string :quote

      t.timestamps null: false
    end
  end
end
