module Mutations
  module Customer
    class Create < BaseMutation
      graphql_name 'CustomerCreate'
      description 'creates customer.'

      field :customer, Types::CustomerType, null: true
      field :errors, [String], null: false

      argument :first_name, String, required: true, camelize: false
      argument :last_name, String, required: true, camelize: false
      argument :phone_number, String, required: true, camelize: false
      argument :email, String, required: false, camelize: false
      argument :type, [Enum::CustomerTypeType], required: false, camelize: false
      argument :country, String, required: false, camelize: false

      def resolve(**args)
        customer = ::Customer.new(
          first_name: args[:first_name],
          last_name: args[:last_name],
          phone_number: args[:phone_number],
          email: args[:email],
          type: args[:type],
          country: args[:country]
        )

        if customer.save
          { customer: customer, errors: [] }
        else
          { customer: nil, errors: customer.errors.full_messages }
        end
      end
    end
  end
end
