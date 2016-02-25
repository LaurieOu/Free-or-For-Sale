class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title, null: false
      t.text :description
      t.integer :price, null: false
      t.integer :university_id, null: false
      t.integer :user_id, null: false
      t.integer :category_id, null: false
      t.boolean :archived, default: false, null: false
      t.string :address

      t.timestamps null: false
    end

    add_index :listings, :university_id, unique: true
    add_index :listings, :user_id, unique: true
    add_index :listings, :category_id, unique: true
  end
end
