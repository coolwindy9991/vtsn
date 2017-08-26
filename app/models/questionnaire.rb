class Questionnaire < ActiveRecord::Base
  belongs_to :cs_evaluation, foreign_key: "evaluation_id"
end
