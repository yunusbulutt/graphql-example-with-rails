module Types
  class MutationType < Types::BaseObject
    field :create_store, mutation: Mutations::CreateStore

    field :create_reservation, mutation: Mutations::CreateReservation

    field :create_customer, mutation: Mutations::CreateCustomer
  end
end
