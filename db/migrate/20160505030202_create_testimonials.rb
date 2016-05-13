class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :name
      t.string :content
      t.attachment :avatar

      t.timestamps null: false
    end
  end
end
