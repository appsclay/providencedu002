class CreateFeeStructures < ActiveRecord::Migration
  def change
    create_table :fee_structures do |t|
      t.references :course, foreign_key: true
      t.string :major_category
      t.string :category
      t.string :amount
      t.string :timing
      t.string :additional_tnc

      t.timestamps null: false
    end
  end
end
