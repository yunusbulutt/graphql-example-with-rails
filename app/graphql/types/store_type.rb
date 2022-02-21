module Types
  class StoreType < Types::BaseObject
    field :id, ID, null: false, camelize: false
    field :name, String, null: false, camelize: false
    field :address, String, null: false, camelize: false
    field :phone_number, String, null: false, camelize: false

    field :reservations, [Types::ReservationType], null: true
  end
end
