class CreateUsers < ActiveRecord::Migration
  def change
  	create_table :users do |t|
  		t.string :business_name, :unique => true, null: false
  		t.string :username, :unique => true
  		t.string :email, :unique => true, null: false
  		t.string :password_hash, null: false

  		t.timestamps
  	end
  end
end
