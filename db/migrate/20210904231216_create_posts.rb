class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :caption
      t.integer :likes
      t.string :seeded_image_data

      t.timestamps
    end
  end
end
