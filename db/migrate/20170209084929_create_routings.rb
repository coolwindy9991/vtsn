class CreateRoutings < ActiveRecord::Migration
  def change
    create_table :routings do |t|
      t.string :flight_no
      t.string :airline_code
      t.string :day_ops

      t.timestamps null: false
    end
  end
end
