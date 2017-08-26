class AddFlightNoSlaEvaluations < ActiveRecord::Migration
  def change
    add_column :sla_evaluations, :flight_no, :string
  end
end
