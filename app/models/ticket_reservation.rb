class TicketReservation < ApplicationRecord
  belongs_to :ticket
  belongs_to :reservation
end
