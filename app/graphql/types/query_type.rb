module Types
  class QueryType < Types::BaseObject
    field :stores, [Types::StoreType], null: false, camelize: false

    def stores
      Store.all
    end

    field :store, Types::StoreType, null: false, camelize: false do
      argument :id, ID, required: true
    end

    def store(id:)
      Store.find(id)
    end

    field :reservations, [Types::ReservationType], null: false, camelize: false

    def reservations
      Reservation.all
    end

    field :reservation, Types::ReservationType, null: false, camelize: false do
      argument :id, ID, required: true
    end

    def reservation(id:)
      Reservation.find(id)
    end

    field :customers, [Types::CustomerType], null: false, camelize: false

    def customers
      Customer.all
    end

    field :customer, Types::CustomerType, null: false, camelize: false do
      argument :id, ID, required: true
    end

    def customer(id:)
      Customer.find(id)
    end
  end
end
