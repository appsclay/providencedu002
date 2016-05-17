class CreateFreeStudyMaterials < ActiveRecord::Migration
  def change
    create_table :free_study_materials do |t|
      t.references :capsule_class, foreign_key: true
      t.string :title
      t.attachment :pdf

      t.timestamps null: false
    end
  end
end
