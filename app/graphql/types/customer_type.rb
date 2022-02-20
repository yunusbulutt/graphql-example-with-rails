module Types
  class CustomerType < Types::BaseObject
    field :id, ID, null: false, camelize: false
    field :first_name, String, null: false, camelize: false
    field :last_name, String, null: false, camelize: false
    field :phone_number, String, null: false, camelize: false
    field :email, String, null: false, camelize: false
    field :type, String, null: false, camelize: false
    field :country, String, null: false, camelize: false

    field :reservations, [Types::ReservationType], null: true
    field :store, Types::StoreType, null: true
  end
end
