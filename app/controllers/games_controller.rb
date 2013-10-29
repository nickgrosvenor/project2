class GamesController < ApplicationController

	def create 
g=Game.create(params[:game].permit(:name,:description,:horse_number,:frequency,:start))	
g.players.create(
	horse_number:g.horse_number,	# Grab the starting horse number from the game
	check_post:false,				# Default they haven't done shit yet today
	user: current_user)				# Tie in the current user to this player

	end 
end		