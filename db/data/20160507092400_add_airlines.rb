class AddAirlines < SeedMigration::Migration
  def up
    Airline.create!(airline_code: 'CX', pax_team_id: 1)
    Airline.create!(airline_code: 'PR', pax_team_id: 1)
    Airline.create!(airline_code: 'KE', pax_team_id: 2)
    Airline.create!(airline_code: 'CI', pax_team_id: 2)
    Airline.create!(airline_code: 'SU', pax_team_id: 2)
    Airline.create!(airline_code: 'BR', pax_team_id: 3)
    Airline.create!(airline_code: 'AF', pax_team_id: 3)
    Airline.create!(airline_code: 'SQ', pax_team_id: 4)
    Airline.create!(airline_code: 'JL', pax_team_id: 4)
    Airline.create!(airline_code: 'ML', pax_team_id: 4)
  end

  def down

  end
end
