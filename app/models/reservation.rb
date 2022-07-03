class Reservation < ApplicationRecord
  belongs_to :ticket
  belongs_to :event
  has_many :payments
  has_many :tickets, through: :ticket_reservations
end
