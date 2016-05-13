class CreateCarrerPages < ActiveRecord::Migration
  def change
    create_table :carrer_pages do |t|
      t.attachment :img
      t.string :heading
      t.attachment :highlight_img1
      t.string :highlight_h1
      t.string :highlight_p1
      t.attachment :highlight_img2
      t.string :highlight_h2
      t.string :highlight_p2
      t.attachment :highlight_img3
      t.string :highlight_h3
      t.string :highlight_p3
      t.attachment :highlight_img4
      t.string :highlight_h4
      t.string :highlight_p4
      t.string :hr_heading
      t.string :hr_email

      t.timestamps null: false
    end
  end
end
