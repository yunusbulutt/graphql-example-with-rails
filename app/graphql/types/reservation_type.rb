module Types
  class ReservationType < Types::BaseObject
    field :id, ID, null: false, camelize: false
    field :date, String, null: false, camelize: false
    field :status, String, null: false, camelize: false
    field :guest_count, Integer, null: false, camelize: false
    field :note, String, null: false, camelize: false

    field :store, Types::StoreType, null: true
    field :customer, Types::CustomerType, null: true
  end
end
