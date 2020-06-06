class CreateMenuImages < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_images do |t|
      t.string :url, null: false
      t.references :restaurant, foreign_key: true, null: false
      t.timestamps
    end
  end
end
