module Types
  class ReservationType < Types::BaseObject
    field :date, String, null: false, camelize: false
    field :status, String, null: false, camelize: false
    field :guest_count, Integer, null: false, camelize: false
    field :note, String, null: false, camelize: false

    field :store, Types::StoreType, null: true

    global_id_field :id
    implements(GraphQL::Types::Relay::Node)
  end
end
