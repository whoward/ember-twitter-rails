class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :tweet_id

      t.timestamps
    end
    
    add_index :likes, [:user_id, :tweet_id], unique: true
    add_foreign_key :likes, :tweets
    add_foreign_key :likes, :users
  end
end
