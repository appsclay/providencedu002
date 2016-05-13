class CreateAboutPages < ActiveRecord::Migration
  def change
    create_table :about_pages do |t|
      t.attachment :img
      t.string :about
      t.text :vision
      t.text :mission
      t.text :extra

      t.timestamps null: false
    end
  end
end
