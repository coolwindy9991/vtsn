class CreateQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.integer :evaluation_id
      t.integer :cs_sop_question_id
      t.integer :answer
      t.timestamps null: false
    end
    add_index :questionnaires, :evaluation_id
    add_index :questionnaires, [:evaluation_id, :cs_sop_question_id], unique: true
  end
end
