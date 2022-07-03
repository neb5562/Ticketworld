class Payment < ApplicationRecord
  belongs_to :reservation
  belongs_to :event
end
