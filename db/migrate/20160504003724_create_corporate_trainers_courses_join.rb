class CreateCorporateTrainersCoursesJoin < ActiveRecord::Migration
  def change
    create_table :corporate_trainers_courses, id: false do |t|
    	t.integer 'corporate_trainer_id'
    	t.integer 'course_id'
    end
   
  end
end
