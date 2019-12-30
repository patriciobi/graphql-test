# frozen_string_literal: true

class GraphqlTestSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
