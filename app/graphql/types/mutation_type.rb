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

    field :create_ticket, [Types::TicketType], null: true, description: "generate tickets for event" do
      argument :event_id, Int
      argument :place_numbers, [Int]
      argument :price, String
    end

    # will take, event_id, array of place numbers and price of these places
    def create_ticket(event_id:, place_numbers:, price:)
      tickets = []

      place_numbers.each do |place_number|
        tickets.push({event_id: event_id, place_number: place_number, price: price})
      end

      Ticket.insert_all tickets
      
    end


  end
end
