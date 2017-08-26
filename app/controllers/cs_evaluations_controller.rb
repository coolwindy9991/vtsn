class CsEvaluationsController < ApplicationController
  def index
    Date.beginning_of_week=(:monday)
    @evaluations_count = []
    s_date = Date.today.beginning_of_week()
    s_date = params[:from_date] unless params[:from_date].blank?
    e_date = Date.today
    e_date = params[:to_date] unless params[:to_date].blank?
    if !params[:option].nil? && params[:option] == '0'
      conditions = CsEvaluation.select("cs_evaluations.staff_id").team(params[:team]).start_from(s_date).end_from(e_date).evaluated
      if params[:team].to_i == 0
        @none = User.where("staff_id NOT IN (#{conditions.to_sql}) and activated is true")
      else
        @none = User.where(:team_id => params[:team]).where("staff_id NOT IN (#{conditions.to_sql})")
      end
    else
      conditions = CsEvaluation.select("cs_evaluations.staff_id").team(params[:team]).start_from(s_date).end_from(e_date).evaluation_times(params[:option])
      # @evaluations_count = conditions.count
      @cs_evaluations = CsEvaluation.start_from(s_date).end_from(e_date).where("staff_id IN (#{conditions.to_sql})").order_desc
    end
    respond_to do |format|
      format.html
      format.xlsx
    end
  end
  
  def new
    @cs_evaluation = current_user.cs_evaluations.new
  end
  
  def show
    @evaluation = CsEvaluation.find(params[:id])
    @questionnaires = Questionnaire.where(:evaluation_id => @evaluation.id, :evaluation_type => 0) # hardcode
  end
  
  def create
    @cs_evaluation = current_user.cs_evaluations.new
    @cs_evaluation.staff_id = params[:cs_evaluation][:staff_id]
    @cs_evaluation.evaluation_date = params[:cs_evaluation][:evaluation_date]
    @cs_evaluation.flight_no = params[:cs_evaluation][:flight_no].downcase
    if @cs_evaluation.save
      (1..CsSopQuestion.where(:question_type => "cssop00").count).each do |i|
        q = Questionnaire.new
        q.evaluation_id = @cs_evaluation.id
        q.evaluation_type = 0 # hardcode
        q.question_id = i
        q.answer = 2
        if params[:cs_evaluation].include?("question_#{i}")
          q.answer = params[:cs_evaluation]["question_#{i}".to_sym]
        end
        q.save
      end
      redirect_to user_path(current_user.id)
    else
      render 'new'
    end
  end
end