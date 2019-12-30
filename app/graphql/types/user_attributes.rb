# frozen_string_literal: true

module Types
  class UserAttributes < Types::BaseInputObject
    description 'Attributes for creating or updating an item'

    argument :name, String, required: true
    argument :email, String, required: false
    argument :password, String, required: false
  end
end
