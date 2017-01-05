class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.integer :status
      t.integer :follower_id
      t.integer :followed_id

      t.timestamps
    end
    add_index :likes, [:follower_id, :followed_id], unique: true
  end
end
