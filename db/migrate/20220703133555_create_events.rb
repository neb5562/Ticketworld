class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.datetime :starting_at, null: false
      t.datetime :ending_at, null: false
      t.timestamps
    end
  end
end
