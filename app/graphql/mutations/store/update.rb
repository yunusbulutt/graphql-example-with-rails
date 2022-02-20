module Mutations
  module Store
    class Update < BaseMutation
      graphql_name 'StoreUpdate'
      description 'updates store.'

      field :store, Types::StoreType, null: true

      argument :name, String, required: true, camelize: false
      argument :address, String, required: true, camelize: false
      argument :phone_number, String, required: true, camelize: false
      argument :store_id, ID, required: true, camelize: false

      def resolve(**args)
        store = ::Store.find(args[:store_id])

        store.update!(
          name: args[:name],
          address: args[:address],
          phone_number: args[:phone_number]
        )

        { store: store }
      end
    end
  end
end
