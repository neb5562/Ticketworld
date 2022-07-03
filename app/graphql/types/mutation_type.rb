module Types
  class MutationType < Types::BaseObject

    field :create_event, [Types::EventType], null: true, description: "Create new event"  do
      argument :name, String
      argument :starting_at, String
      argument :ending_at, String
    end
    
    def create_event(name:, starting_at:, ending_at:)
      Event.create name: name, starting_at: starting_at, ending_at: ending_at
    end
  end
end
