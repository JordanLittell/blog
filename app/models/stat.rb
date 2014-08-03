class Stat < ActiveRecord::Base
	belongs_to :admin 
	validates :hours_slept, presence:true
	validates :hours_worked, presence:true
	validates :day_rating, presence:true
	validates :hours_fitness, presence:true
	validates :mg_caffeine, presence:true
end
