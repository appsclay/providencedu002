class CreateTermPages < ActiveRecord::Migration
  def change
    create_table :term_pages do |t|
      t.text :script

      t.timestamps null: false
    end
  end
end
