class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :handle
      t.string :name
      t.string :avatar_url

      t.timestamps
    end
    
    add_index :users, :handle, unique: true
  end
end
