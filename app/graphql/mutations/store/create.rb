module Mutations
  module Store
    class Create < BaseMutation
      graphql_name 'StoreCreate'
      description 'creates store.'

      field :store, Types::StoreType, null: true

      argument :name, String, required: true, camelize: false
      argument :address, String, required: true, camelize: false
      argument :phone_number, String, required: true, camelize: false

      def resolve(**args)
        store = ::Store.create!(
          name: args[:name],
          address: args[:address],
          phone_number: args[:phone_number]
        )

        { store: store }
      end
    end
  end
end
