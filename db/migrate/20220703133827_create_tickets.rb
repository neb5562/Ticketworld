class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.integer :place_number, null: false, index: { unique: true }
      t.decimal :price, precision: 5, scale: 2, null: false
      t.references :event, index: true
      t.timestamps
    end
  end
end
