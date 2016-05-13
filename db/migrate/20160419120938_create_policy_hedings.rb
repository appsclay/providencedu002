class CreatePolicyHedings < ActiveRecord::Migration
  def change
    create_table :policy_hedings do |t|
      t.string :heading

      t.timestamps null: false
    end
  end
end
