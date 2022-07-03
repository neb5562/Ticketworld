module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator" do
        argument :name, String, required: true
      end
    def test_field(name:)
      "Hello #{name}! #{context[:payment_due]}"
    end

    field :event, Types::EventType, null: true, 
      description: "returns one event instance" do
        argument :id, ID, required: true
    end

    def event(id:)
      Event.where(id: id).first
    end
 
    field :events, [Types::EventType], null: false

    def events
      Event.all
    end
  end
end
