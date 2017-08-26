class FixQuestionnairesColumnName < ActiveRecord::Migration
  def change
    rename_column :questionnaires, :cs_sop_question_id, :question_id
  end
end
