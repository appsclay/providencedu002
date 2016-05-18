class CreatePrivacyPolicyTopTexts < ActiveRecord::Migration
  def change
    create_table :privacy_policy_top_texts do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end
