module Types
  class StoreType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :address, String, null: false
    field :phone_number, String, null: false

    field :reservations, Types::ReservationType
    field :customers, Types::CustomerType
  end
end
