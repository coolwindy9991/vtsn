class CreateAirlinesSlas < ActiveRecord::Migration
  def change
    create_table :airlines_slas do |t|
      t.string :airline_code
      t.string :category
      t.string :kpi
      t.decimal :target

      t.timestamps null: false
    end
  end
end
