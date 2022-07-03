class Event < ApplicationRecord
  has_many :tickets
  has_many :reservations
  has_many :payments

end
