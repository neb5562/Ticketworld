class Types::EventType < Types::BaseObject

  description "One Event"

  field :id, ID, null: false, camelize: false
  field :name, String, null: false, camelize: false
  field :starting_at, GraphQL::Types::ISO8601DateTime, null: false, camelize: false
  field :ending_at, GraphQL::Types::ISO8601DateTime, null: false, camelize: false
  field :created_at, GraphQL::Types::ISO8601DateTime, null: false, camelize: false
  field :updated_at, GraphQL::Types::ISO8601DateTime, null: false, camelize: false
end