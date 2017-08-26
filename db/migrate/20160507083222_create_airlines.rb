class CreateAirlines < ActiveRecord::Migration
  def change
    create_table :airlines do |t|
      t.string :airline_code
      t.string :airline
      t.integer :pax_team_id

      t.timestamps null: false
    end
  end
end
