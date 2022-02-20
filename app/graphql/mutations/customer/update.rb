module Mutations
  module Customer
    class Update < BaseMutation
      graphql_name 'CustomerUpdate'
      description 'updates customer.'

      field :customer, Types::CustomerType, null: true

      argument :first_name, String, required: true, camelize: false
      argument :last_name, String, required: true, camelize: false
      argument :phone_number, String, required: true, camelize: false
      argument :email, String, required: false, camelize: false
      argument :type, [Enum::CustomerTypeType], required: false, camelize: false
      argument :country, String, required: false, camelize: false
      argument :customer_id, ID, required: true, camelize: false

      def resolve(**args)
        customer = ::Customer.find(args[:customer_id])

        customer.update!(
          first_name: args[:first_name],
          last_name: args[:last_name],
          phone_number: args[:phone_number],
          email: args[:email],
          type: args[:type],
          country: args[:country]
        )

        { customer: customer }
      end
    end
  end
end
