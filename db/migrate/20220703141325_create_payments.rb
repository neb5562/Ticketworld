class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.boolean :payment_status, null: false, default: false
      t.references :event, index: true
      t.references :reservation, index: true 
      t.timestamps
    end
  end
end
