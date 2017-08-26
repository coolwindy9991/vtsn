class AddFlightNoToCsEvaluations < ActiveRecord::Migration
  def change
    add_column :cs_evaluations, :flight_no, :string
  end
end
