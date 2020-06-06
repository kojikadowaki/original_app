class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text       :description, null: false
      t.string     :image_url,	 null: false 
      t.string     :video_url	
      t.references :restaurant,  foreign_key: true, null: false
      t.timestamps
    end
  end
end
