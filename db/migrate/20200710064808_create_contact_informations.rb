class CreateContactInformations < ActiveRecord::Migration[5.0]
  def change
    create_table :contact_informations do |t|
      t.string     :name,         null: false
      t.string     :email,        null: false
      t.string     :phone_number, null: false
      t.references :restaurant,   foreign_key: true, null: false
      t.timestamps
    end
  end
end
