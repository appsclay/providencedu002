class CreatePmHeadings < ActiveRecord::Migration
  def change
    create_table :pm_headings do |t|
      t.string :heading

      t.timestamps null: false
    end
  end
end
