class CreateSlaEvaluations < ActiveRecord::Migration
  def change
    create_table :sla_evaluations do |t|
      t.integer :user_id
      t.string :airline_code
      t.date :evaluation_date
      t.timestamps null: false
    end
  end
end
