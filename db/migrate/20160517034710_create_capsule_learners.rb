class CreateCapsuleLearners < ActiveRecord::Migration
  def change
    create_table :capsule_learners do |t|
      t.integer :capsule_class_id
      t.string :name
      t.string :email,:unique => true
      t.string :phone_number,:unique => true
      t.string :educational_status
      t.string :company_name

      t.timestamps null: false
    end
  end
end
