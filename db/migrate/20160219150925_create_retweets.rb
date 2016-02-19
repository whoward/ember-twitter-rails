class CreateRetweets < ActiveRecord::Migration[5.0]
  def change
    create_table :retweets do |t|
      t.integer :user_id
      t.integer :tweet_id

      t.timestamps
    end
    
    add_index :retweets, [:user_id, :tweet_id], unique: true
    add_foreign_key :retweets, :users
    add_foreign_key :retweets, :tweets
  end
end
