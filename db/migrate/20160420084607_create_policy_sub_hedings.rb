class CreatePolicySubHedings < ActiveRecord::Migration
  def change
    create_table :policy_sub_hedings do |t|
      t.references :policy_heding, foreign_key: true
      t.string :sub_heading

      t.timestamps null: false
    end
  end
end
