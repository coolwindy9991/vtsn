class SlaEvaluationsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  
  def new
    @airlines_slas = AirlinesSla.order(:id).where("lower(airline_code) = ?", params[:airline_code].downcase)
  end

  def create
    sla_evaluation = current_user.sla_evaluations.new
    sla_evaluation.airline_code = params[:sla_evaluation][:airline_code].downcase
    sla_evaluation.evaluation_date = params[:sla_evaluation][:evaluation_date]
    sla_evaluation.flight_no = params[:sla_evaluation][:flight_no]
    sla_evaluation.other_information = params[:sla_evaluation][:other_information]
    sla_evaluation.save
    
    slas = AirlinesSla.order(:id).where(:airline_code => sla_evaluation.airline_code)
    (1..slas.size).each do |i|
      q = Questionnaire.new
      q.evaluation_type = 1 # hardcode
      q.evaluation_id = sla_evaluation.id
      q.question_id = slas[i-1].id
      q.answer = "2"
      if params[:sla_evaluation].include?("target_#{i}") then
        q.answer = params[:sla_evaluation]["target_#{i}".to_sym]
      end
      q.comment = params[:sla_evaluation]["comment_#{i}".to_sym] unless params[:sla_evaluation]["comment_#{i}".to_sym].nil?
      q.save
    end
    redirect_to user_path(current_user.id)
  end

  def edit
  end
  
  def destroy
    @sla_evaluation = SlaEvaluation.find(params[:id])
    authorize @sla_evaluation
    @sla_evaluation.destroy
    redirect_to root_path
  end

  def show
    @sla_evaluation = SlaEvaluation.find(params[:id])
    @questionnaires = Questionnaire.where(:evaluation_id => @sla_evaluation.id, :evaluation_type => 1) # hardcode
  end

  def index
    if logged_in?
      @sla_evaluations = current_user.sla_evaluations
    else
      @sla_evaluations = SlaEvaluation.first(20)
    end
  end
end
