class CreateRequirementCategories < ActiveRecord::Migration
  def change
    create_table :requirement_categories do |t|
      t.integer :rank
      t.references :position, index: true, foreign_key: true
      t.string :requirement_name
      t.text :role_and_responsibilities
      t.text :what_we_are_looking_for
      t.string :hr_email
      t.string :hr_number

      t.timestamps null: false
    end
  end
end
