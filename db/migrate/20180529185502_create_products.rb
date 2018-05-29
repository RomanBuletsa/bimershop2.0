class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :user_id
      t.string :name
      t.string :description
      t.float :price
      t.integer :count

      t.timestamps
    end
  end
end
