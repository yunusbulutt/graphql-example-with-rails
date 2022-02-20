module Types
  class MutationType < Types::BaseObject
    field :store_create, mutation: Mutations::Store::Create
    field :store_update, mutation: Mutations::Store::Update
    field :store_delete, mutation: Mutations::Store::Delete

    field :reservation_create, mutation: Mutations::Reservation::Create
    field :reservation_update, mutation: Mutations::Reservation::Update
    field :reservation_delete, mutation: Mutations::Reservation::Delete

    field :customer_create, mutation: Mutations::Customer::Create
    field :customer_update, mutation: Mutations::Customer::Update
    field :customer_delete, mutation: Mutations::Customer::Delete
  end
end
