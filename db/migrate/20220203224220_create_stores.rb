class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores, id: :uuid do |t|
      t.string :name
      t.text :address
      t.string :phone_number
      t.uuid(:reservation_id, foreign_key: true)
      t.uuid(:customer_id, foreign_key: true)

      t.timestamps
    end
  end
end
