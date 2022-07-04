class Types::TicketType < Types::BaseObject

  description "One Ticket"

  field :id, ID, null: false, camelize: false
  field :place_number, Int, null: false, camelize: false
  field :price, String, null: false, camelize: false
  field :event_id, ID, null: false, camelize: false
end