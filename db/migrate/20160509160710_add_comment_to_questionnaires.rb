class AddCommentToQuestionnaires < ActiveRecord::Migration
  def change
    add_column :questionnaires, :comment, :string
  end
end
