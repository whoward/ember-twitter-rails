class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.integer :user_id
      t.string :text

      t.timestamps
    end
    add_foreign_key :tweets, :users
  end
end
