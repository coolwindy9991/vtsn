class CreateAirlineBriefings < ActiveRecord::Migration
  def change
    create_table :airline_briefings do |t|
      t.string :airline_code
      t.string :content
      t.integer :created_by
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
