class AddAvatarToUserparams < ActiveRecord::Migration[5.1]
  def change
    add_column :userparams, :avatar, :string
  end
end
