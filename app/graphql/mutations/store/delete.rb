module Mutations
  module Store
    class Delete < BaseMutation
      graphql_name 'StoreDelete'

      field :status, Boolean, null: true

      argument :store_id, ID, required: true, camelize: false

      def resolve(**args)
        store = ::Store.find(args[:store_id])
        store.destroy!

        { status: true }
      end
    end
  end
end
