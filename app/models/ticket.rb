class Ticket < ApplicationRecord
  belongs_to :event
  has_many :reservations, through: :ticket_reservations
end
