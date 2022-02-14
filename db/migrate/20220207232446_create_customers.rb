class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers, id: :uuid do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.integer :type, default: 0
      t.string :country
      t.uuid(:reservation_id, foreign_key: true)

      t.timestamps
    end
  end
end
