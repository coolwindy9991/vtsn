class AirlineBriefingsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  # before_action :correct_user, only: [:destroy]
  
  def index
    @airline_codes = AirlineBriefing.select(:airline_code).group(:airline_code)
    unless params[:airline_code].nil?
      @airline_briefings = AirlineBriefing.where(airline_code: params[:airline_code]).order(:created_at)
    end
  end
  
  def new
    @airline_briefing = AirlineBriefing.new
  end
  
  def create
    @airline_briefing = AirlineBriefing.new(input_params)
    @airline_briefing.created_by = current_user.id
    @airline_briefing.is_active = true
    if @airline_briefing.save
      flash[:info] = "New briefing note for #{@airline_briefing.airline_code} is added."
      redirect_to airline_briefings_path
    else
      render :new
    end
  end

  def destroy
  end
  
  private
    def input_params
      params.require(:airline_briefing).permit(:airline_code, :content)
    end
    
    def correct_user
      @micropost = current_user.microposts.find_by(id: params[:id])
      redirect_to root_url if @micropost.nil?
    end
end
