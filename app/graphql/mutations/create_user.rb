module Mutations
  class CreateUser < BaseMutation
    argument :name, String, required: true
    argument :email, String, required: true
    argument :password, String, required: true

    field :name, String, null: true
    field :email, String, null: false
    field :errors, [String], null: false

    # return type from the mutation
    type Types::UserType

    def resolve(name:, email:, password:)
      user = User.new(name: name, email: email, password: password)

      if user.save
        { user: user }
      else
        { errors: user.errors.full_messages }
      end
    end
  end
end
