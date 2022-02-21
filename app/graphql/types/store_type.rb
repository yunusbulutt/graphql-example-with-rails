module Types
  class StoreType < Types::BaseObject
    field :name, String, null: false, camelize: false
    field :address, String, null: false, camelize: false
    field :phone_number, String, null: false, camelize: false

    field :reservations, [Types::ReservationType], null: true

    global_id_field :id
    implements(GraphQL::Types::Relay::Node)
  end
end
