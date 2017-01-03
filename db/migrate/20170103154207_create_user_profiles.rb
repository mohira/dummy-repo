class CreateUserProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_profiles do |t|
      t.integer :user_id, null: false
      t.integer :age,     null: false
      t.integer :height,  null: false
      t.integer :weight,  null: false

      t.timestamps
    end
  end
end
