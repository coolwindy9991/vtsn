class QpsPassengersController < ApplicationController
  def new
    @qps_passenger = QpsPassenger.new(:staff_id => current_user.staff_id)
  end
  
  def create
    @qps_passenger = QpsPassenger.new(params.require(:qps_passenger).permit(:check_in, :boarding, :transit_transfer,
    :arrival, :lost_and_found,:special_assistant))
    @qps_passenger.staff_id = params[:qps_passenger][:staff_id]
    @qps_passenger.evaluation_date = params[:qps_passenger][:evaluation_date]
    @qps_passenger.flight_no = params[:qps_passenger][:flight_no].downcase
    if @qps_passenger.save
      redirect_to qps_passengers_path
    else
      render 'new'
    end
  end
  
  def index
    Date.beginning_of_week=(:wednesday)
    s_date = params[:from_date] || Date.today.beginning_of_week()
    e_date = params[:to_date] || Date.today
    @qps_passengers = QpsPassenger.start_from(s_date).end_from(e_date).order_desc
    
    respond_to do |format|
      format.html
      format.xlsx
    end
  end
end