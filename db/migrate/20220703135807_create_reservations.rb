class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :event, index: true
      t.datetime :payment_due, default: Time.now + (15 * 60)
      t.timestamps
    end
  end
end
