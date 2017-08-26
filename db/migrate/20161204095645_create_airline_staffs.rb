class CreateAirlineStaffs < ActiveRecord::Migration
  def change
    create_table :airline_staffs do |t|
      t.string :airline_code
      t.string :staff_id

      t.timestamps null: false
    end
  end
end
