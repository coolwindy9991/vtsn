class AddEvaluationTypeToQuestionnaires < ActiveRecord::Migration
  def change
    add_column :questionnaires, :evaluation_type, :integer
  end
end
