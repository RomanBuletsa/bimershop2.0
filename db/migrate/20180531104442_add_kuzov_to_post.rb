class AddKuzovToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :kuzov, :string
  end
end
