class PlansController < ApplicationController

  def index
    @plans = Plan.all
  end

  def show
    @plan = Plan.find params[:id]
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)
    @plan.user_id = current_user.id 
    
    if @plan.save
      redirect_to plans_path, notice: '旅行企画が投稿されました'
    else
      render 'new'
    end
      
  end

  private
  def plan_params
    params.require(:plan).permit(:title, :date, :place, :meeting_place, :meeting_time, :content, :img)
  end

  def move_to_index
    redirect_to :action => "index" unless user_signed_in?
  end

end

