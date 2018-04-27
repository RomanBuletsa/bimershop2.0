class CreateUserparams < ActiveRecord::Migration[5.1]
  def change
    create_table :userparams do |t|
      t.integer :user_id
      t.string :firstname
      t.string :lastname
      t.string :country
      t.string :city
      t.datetime :dofb
      t.string :phone

      t.timestamps
    end
  end
end
