class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :type
      t.string :username
      t.string :password
      t.string :email
      t.string :provider
      t.string :uid

      t.timestamps
    end
  end
end
