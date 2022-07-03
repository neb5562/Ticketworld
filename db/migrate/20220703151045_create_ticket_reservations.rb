class CreateTicketReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :ticket_reservations do |t|

      t.timestamps
    end
  end
end
