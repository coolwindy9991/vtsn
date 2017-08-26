class CreateQpsPassengers < ActiveRecord::Migration
  def change
    create_table :qps_passengers do |t|
      t.string :staff_id
      t.string :flight_no
      t.date :evaluation_date
      t.integer :check_in
      t.integer :boarding
      t.integer :arrival
      t.integer :transit_transfer
      t.integer :special_assistant
      t.integer :lost_and_found
      t.text :comment

      t.timestamps null: false
    end
  end
end
