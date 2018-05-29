class AddIconsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :icons, :string
  end
end
