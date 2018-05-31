class AddYearAndPrivodAndPriceAndKsAndTypeToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :year, :integer
    add_column :posts, :privod, :string
    add_column :posts, :price, :integer
    add_column :posts, :ks, :integer
    add_column :posts, :type, :string
  end
end
