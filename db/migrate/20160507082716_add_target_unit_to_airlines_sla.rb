class AddTargetUnitToAirlinesSla < ActiveRecord::Migration
  def change
    add_column :airlines_slas, :target_unit, :string
  end
end
