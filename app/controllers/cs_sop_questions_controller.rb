class CsSopQuestionsController < ApplicationController
  def index
    @cs_sop_questions = CsSopQuestion.all
  end
  
  def new
    @cs_sop_question = CsSopQuestion.new
  end
  
  def create
    @cs_sop_question = CsSopQuestion.new(cs_sop_question_params)
    if @cs_sop_question.save
        flash[:info] = "New question is added."
        redirect_to cs_sop_questions_path
      else
        render :new
    end
  end
  
  private
    def cs_sop_question_params
      params.require(:cs_sop_question).permit(:question, :is_active)
    end
end
