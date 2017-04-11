class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :photo_url
      t.string :caption
      t.integer :place_id
      t.timestamps
    end
    
    add_index :photos, :place_id
    add_index :photos, [:user_id, :place_id]
    
  end
end
