module Mutations
  class CreateStore < BaseMutation
    graphql_name 'CreateStore'

    field :reservations, Types::ReservationType
    field :customers, Types::CustomerType

    argument :name, String, required: true, camelize: false
    argument :address, String, required: true, camelize: false
    argument :phone_number, String, required: true, camelize: false

    type Types::StoreType

    def resolve(name: nil, address: nil, phone_number: nil, customers: nil, reservations: nil)
      Store.create!(
        name: name,
        address: address,
        phone_number: phone_number,
        reservations: reservations,
        customers: customers
      )
    end
  end
end
