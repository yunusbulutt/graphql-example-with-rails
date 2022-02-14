class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations, id: :uuid do |t|
      t.datetime :date
      t.integer :status, default: 0
      t.integer :guest_count
      t.string :note
      t.uuid(:store_id, foreign_key: true)
      t.uuid(:customer_id, foreign_key: true)

      t.timestamps
    end
  end
end
