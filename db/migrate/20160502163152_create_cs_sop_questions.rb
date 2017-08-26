class CreateCsSopQuestions < ActiveRecord::Migration
  def change
    create_table :cs_sop_questions do |t|
      t.string :question
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
