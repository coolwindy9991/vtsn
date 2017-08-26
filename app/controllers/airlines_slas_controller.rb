class AirlinesSlasController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update, :destroy]
  
  def index
    @airlines_slas = AirlinesSla.select(:airline_code).group(:airline_code)
    unless params[:airline_code].nil?
      @sla_kpis = AirlinesSla.where(airline_code: params[:airline_code]).order(:category)
    end
  end
  
  def new
    @airlines_sla = AirlinesSla.new
  end
  
  def create
    @airlines_sla = AirlinesSla.new(airline_sla_params)
    if @airlines_sla.save
        flash[:info] = "New SLA KPI for #{@airlines_sla.airline_code} is added."
        redirect_to airlines_slas_path
      else
        render :new
    end
  end
  
  def edit
    @airlines_sla = AirlinesSla.find(params[:id])
  end
  
  def update
    @airlines_sla = AirlinesSla.find(params[:id])
    if @airlines_sla.update_attributes(airline_sla_params)
      flash[:success] = "SLA for #{@airlines_sla.airline_code} was updated!"
      redirect_to airlines_slas_path(:airline_code => @airlines_sla.airline_code)
    else
      render 'edit'
    end
  end
  
  def destroy
    if current_user.staff_id == "04105" then
      AirlinesSla.find_by_id(params[:id]).destroy
      redirect_to airlines_slas_url
    end
  end
  
  private
    def airline_sla_params
      params.require(:airlines_sla).permit(:airline_code, :category,
                                            :kpi, :target, :target_unit)
    end
end
