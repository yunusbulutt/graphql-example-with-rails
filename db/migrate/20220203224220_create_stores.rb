class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :name
      t.text :address
      t.string :phone_number

      t.timestamps
    end
  end
end
