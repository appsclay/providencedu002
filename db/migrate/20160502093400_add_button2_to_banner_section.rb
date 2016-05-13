class AddButton2ToBannerSection < ActiveRecord::Migration
  def change
    add_column :banner_sections, :banner_button2_text, :string,limit: 20
    add_column :banner_sections, :banner_button2_url, :string
  end
end
