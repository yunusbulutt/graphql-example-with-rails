# frozen_string_literal: true

module Types
  class ReservationType < Types::BaseObject
    field :id, ID, null: false
    field :date, GraphQL::Types::ISO8601DateTime, null: false
    field :status, Enum::ReservationStatusTypeType, null: false
    field :guest_count, Integer, null: false
    field :note, String

    field :customer, Types::CustomerType
    field :store, Types::StoreType
  end
end
