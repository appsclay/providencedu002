class AddCurriculumToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :curriculum, :text
  end
end
