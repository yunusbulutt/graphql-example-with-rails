# frozen_string_literal: true

module Types
  class CustomerType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :phone_number, String, null: false
    field :email, String
    field :type, Enum::CustomerTypeType
    field :country, String, null: false

    field :reservations, Types::ReservationType
  end
end
