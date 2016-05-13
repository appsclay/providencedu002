class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :mmail
      t.text :mmessage

      t.timestamps null: false
    end
  end
end
