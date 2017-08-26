class QuestionnairesController < ApplicationController
  def creat
  end

  def destroy
  end

  def show
    @questionnaires = Questionnaire.where(:evaluation_id => params[:id], evaluation_type: params[:evaluation_type])
    if @questionnaires[0].evaluation_type == 0
      @evaluation = CsEvaluation.find(@questionnaires[0].evaluation_id)
      @user = @evaluation.user
    elsif @questionnaires[0].evaluation_type == 1
      @evaluation = SlaEvaluation.find(@questionnaires[0].evaluation_id)
      @user = @evaluation.user
    end
  end

  def edit
  end
end
