module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :all_stores, [StoreType], null: false

    def all_stores
      Store.all
    end
  end
end
