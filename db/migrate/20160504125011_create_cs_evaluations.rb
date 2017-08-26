class CreateCsEvaluations < ActiveRecord::Migration
  def change
    create_table :cs_evaluations do |t|
      t.string :evaluator
      t.string :staff_id
      t.string :staff_name
      t.date :evaluation_date

      t.timestamps null: false
    end
  end
end
