class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string     :name,           null: false
      t.string     :opening_hours,  null: false
      t.string     :phone_number,   unique: true
      t.integer    :menu_tax_id,    null: false
      t.integer    :post_code,      null: false
      t.string     :address,        null: false
      t.string     :url  
      t.references :user,           foreign_key: true, null: false
      t.timestamps
    end
  end
end
