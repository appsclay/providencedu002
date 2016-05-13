class AddPositionToPolicyHeding < ActiveRecord::Migration
  def change
    add_column :policy_hedings, :position, :integer
  end
end
