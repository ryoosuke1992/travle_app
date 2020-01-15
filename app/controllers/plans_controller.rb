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
		@plan.save
		redirect_to plan_path(@plan)
	end

	def plan_params
		params.require(:plan).permit(:title, :date, :place, :meeting_place, :meeting_time, :content)
	end
end
