module Mutations
  module Customer
    class Delete < BaseMutation
      graphql_name 'CustomerDelete'

      field :status, Boolean, null: true

      argument :customer_id, ID, required: true, camelize: false

      def resolve(**args)
        customer = ::Customer.find(args[:customer_id])
        customer.destroy!

        { status: true }
      end
    end
  end
end
