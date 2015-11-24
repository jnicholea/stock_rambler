class CreatePhotos < ActiveRecord::Migration
  def change
  	create_table :photos do |t|
  		t.references :photographer, null: false
      t.string :url, null: false
      t.string :format, null: false
  		t.string :stock, null: false
  		t.string :camera
  		t.string :lens
  		t.string :lighting, null: false
  		t.string :rating
  		t.string :lab
  		t.string :processing
  		t.string :scanner
  		t.string :expiration
  	end
  end
end
