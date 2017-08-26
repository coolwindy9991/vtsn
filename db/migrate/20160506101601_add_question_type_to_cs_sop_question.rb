class AddQuestionTypeToCsSopQuestion < ActiveRecord::Migration
  def change
    add_column :cs_sop_questions, :question_type, :string
  end
end
