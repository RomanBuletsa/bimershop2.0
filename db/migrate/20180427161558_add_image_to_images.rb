class AddImageToImages < ActiveRecord::Migration[5.1]
  def change
  	add_column :images, :image, :string
  end
end
