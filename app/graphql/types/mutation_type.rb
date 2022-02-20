module Types
  class MutationType < Types::BaseObject
    field :store_create, mutation: Mutations::Store::Create
    field :store_update, mutation: Mutations::Store::Update
    field :store_delete, mutation: Mutations::Store::Delete

    field :reservation_create, mutation: Mutations::Reservation::Create
    field :reservation_update, mutation: Mutations::Reservation::Update
    field :reservation_delete, mutation: Mutations::Reservation::Delete
  end
end
