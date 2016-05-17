class CreateCapsuleClasses < ActiveRecord::Migration
  def change
    create_table :capsule_classes do |t|
      t.string :title
      t.date :starting_date
      t.string :duration
      t.text :benifits
      t.string :guest_lecturer
      t.boolean :display, default: false

      t.timestamps null: false
    end
  end
end
