class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :position
      t.attachment :img
      t.string :name,limit: 150
      t.string :duration,limit: 100
      t.date :batch_starting_on
      t.string :fee,limit: 200
      t.text :highlights
      t.text :overview
      t.text :course_benifits

      t.timestamps null: false
    end
  end
end
