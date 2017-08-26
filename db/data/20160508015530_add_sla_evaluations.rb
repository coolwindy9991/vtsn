class AddSlaEvaluations < SeedMigration::Migration
  def up
    users = User.order(:created_at).take(6)
    airlines =  Airline.all
    users.each do |u|
      airlines.each do |a|
        SlaEvaluation.create!(airline_code: a.airline_code, user_id: u.id, evaluation_date: Date.current)
      end
    end
  end

  def down

  end
end
