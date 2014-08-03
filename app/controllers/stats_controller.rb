class StatsController < ApplicationController

	def create
		@stat = Stat.new(stats_params)
		if @stat.save!
			redirect_to root_path
		end
	end
	def destroy
		@stat = Stat.find_by_id(params[:id])
		@stat.delete!
	end
	def new 
		@stat = Stat.new()
	end
	private 

	def stats_params
		params.require(:stat).permit(:hours_worked,:hours_slept,:hours_fitness,:mg_caffeine,:day_rating)
	end
end