class AddSocialLinkToCorporateTrainer < ActiveRecord::Migration
  def change
    add_column :corporate_trainers, :twitter, :string
    add_column :corporate_trainers, :linkedin, :string
  end
end
