class PlansController < ApplicationController

  before_action :authenticate_user!, except: [:index, :show]

  def show
    @plan = Plan.find params[:id]
    @random = Plan.order("RAND()").limit(5)
  end

  def new
    @plan = Plan.new
  end

  def create
    @plan = Plan.new(plan_params)

    if @plan.save
      redirect_to plans_path, notice: '旅行企画が投稿されました'
    else
      render 'new'
    end
  end

  private

  def plan_params
    params.require(:plan).permit(:title, :date, :place, :meeting_place, :meeting_time, :content, :image).merge(user_id: current_user.id)
  end
end