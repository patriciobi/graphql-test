# frozen_string_literal: true

module Types
  class RentalType < Types::BaseObject
    graphql_name 'rentals'

    field :id, ID, null: false
    field :rental_type, String, null: false
    field :accommodates, Int, null: false
    field :postal_code, String, null: false
    field :bathrooms, Int, null: false
    field :description, String, null: false
    field :country, String, null: false

    field :user, Types::UserType, null: false
  end
end
