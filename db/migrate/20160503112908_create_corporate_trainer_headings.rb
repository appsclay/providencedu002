class CreateCorporateTrainerHeadings < ActiveRecord::Migration
  def change
    create_table :corporate_trainer_headings do |t|
      t.string :heading

      t.timestamps null: false
    end
  end
end
