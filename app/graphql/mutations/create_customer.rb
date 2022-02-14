module Mutations
  class CreateCustomer < BaseMutation
    graphql_name 'CreateCustomer'

    argument :first_name, String, camelize: false
    argument :last_name, String, camelize: false
    argument :phone_number, String, camelize: false
    argument :email, String, required: false, camelize: false
    argument :type, [Enum::CustomerTypeType], required: false, camelize: false
    argument :country, String, camelize: false

    type Types::CustomerType

    def resolve(email: nil, gender: nil, type: nil, **args)
      Customer.create!(
        first_name: args[:first_name],
        last_name: args[:last_name],
        phone_number: args[:phone_number],
        email: email,
        gender: gender,
        type: type,
        country: args[:country],
        note: note
      )
    end
  end
end
