class CreateLearners < ActiveRecord::Migration
  def change
    create_table :learners do |t|
      t.string :name, limt: 100 
      t.string :email,:unique => true, limit: 100
      t.string :phone_number, :unique => true, limit: 15
      t.integer :course_id
      t.string :course_type, limit: 30
      t.string :educational_status
      t.string :company_name

      t.timestamps null: false
    end
  
    add_index :learners, :course_id
  end
end
