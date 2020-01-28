class PlansController < ApplicationController

  before_action :authenticate_user!, except: :index

  def show
    @user = User.find(1)
    @plan = @user.plans
    @plan = User.first.plans
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