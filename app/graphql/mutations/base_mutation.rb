module Mutations
  class BaseMutation < GraphQL::Schema::Mutation
    def check_authentication!
      return unless context["current_user"]

      raise GraphQL::ExecutionError, "You need to authenticate to perform this action"
    end
  end
  # class BaseMutation < GraphQL::Schema::RelayClassicMutation
  #   argument_class Types::BaseArgument
  #   field_class Types::BaseField
  #   input_object_class Types::BaseInputObject
  #   object_class Types::BaseObject
  # end
end
