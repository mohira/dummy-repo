class AddSexToUserProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :user_profiles, :sex, :integer
  end
end
