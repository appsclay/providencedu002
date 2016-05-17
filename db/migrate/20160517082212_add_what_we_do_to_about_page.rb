class AddWhatWeDoToAboutPage < ActiveRecord::Migration
  def change
    add_column :about_pages, :who_we_are, :text
    add_column :about_pages, :what_we_do, :text
  end
end
