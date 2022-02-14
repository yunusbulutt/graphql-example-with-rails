module Types
  class QueryType < Types::BaseObject
    field :all_stores, [StoreType], null: false, camelize: false do
      argument :id, ID, required: false
    end

    def all_stores(id: nil)
      if id.present?
        Store.where(id: id)
      else
        Store.all
      end
    end

    field :all_reservations, [ReservationType], null: false, camelize: false

    def all_reservations
      Reservation.all
    end

    field :all_customers, [CustomerType], null: false, camelize: false

    def all_customers
      Customer.all
    end
  end
end
