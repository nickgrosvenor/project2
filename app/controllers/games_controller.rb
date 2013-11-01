class GamesController < ApplicationController

	def create 
		g=Game.new(params[:game].permit(:name,:description,:horse_number,:frequency,:start))	
		g.start=DateTime.now.since(params[:game][:start].to_i.day)
		g.save
		g.players.create(
		horse_number:g.horse_number,	# Grab the starting horse number from the game
		check_post:false,				# Default they haven't done shit yet today
		user: current_user)				# Tie in the current user to this player
		redirect_to current_user

	end

	def index
		# @games = current_user.games
		@games=Game.where(:start.gt => DateTime.now)
		# find all the games we're playing 
		@ourGames=[]
		@games.each do |g|
			g.players.each do |p|
				if p.user == current_user
					@ourGames.push g
				end
			end
		end
	end	



end		