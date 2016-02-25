class RemoveUniqueFromIndex < ActiveRecord::Migration
  def change
    change_table :listings do |t|
      t.remove_index :university_id
      t.remove_index :user_id
      t.remove_index :category_id

      add_index :listings, :university_id
      add_index :listings, :user_id
      add_index :listings, :category_id
    end

  end
end
