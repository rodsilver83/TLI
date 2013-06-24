class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :cookie
      t.integer :product_id

      t.timestamps
    end
  end
end
