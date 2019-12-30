# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :rentals, [Types::RentalType], null: false, description: 'Returns a list of rentals' do
      argument :id, ID, required: false
      argument :rental_type, String, required: false
      argument :accommodates, Int, required: false
      argument :postal_code, String, required: false
      argument :bathrooms, Int, required: false
      argument :description, String, required: false
      argument :country, String, required: false
    end

    def rentals(rental_params = {})
      Rental.where(rental_params).includes(:user)
    end
  end
end
