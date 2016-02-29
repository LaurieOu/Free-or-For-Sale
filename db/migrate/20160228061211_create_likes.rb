class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :listing_id, null: false
      t.integer :user_id, null: false
      t.integer :comment_id

      t.timestamps null: false
    end

    add_index :likes, :listing_id
    add_index :likes, :comment_id
    add_index :likes, :user_id


  end
end
