class PlansController < ApplicationController
	def index
		@plan = Plan.find(1)
	end

	def new
	end
end
