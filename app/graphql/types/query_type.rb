module Types
  class QueryType < Types::BaseObject
    add_field(GraphQL::Types::Relay::NodeField)

    field :stores, [Types::StoreType], null: false, camelize: false

    def stores
      Store.all
    end

    field :reservations, [Types::ReservationType], null: false, camelize: false

    def reservations
      Reservation.all
    end
  end
end
