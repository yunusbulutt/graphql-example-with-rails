class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.datetime :date
      t.integer :status, default: 0
      t.integer :guest_count
      t.string :note
      t.integer(:store_id)
      t.integer(:customer_id)

      t.timestamps
    end
  end
end
