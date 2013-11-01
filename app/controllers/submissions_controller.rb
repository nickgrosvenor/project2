class SubmissionsController < ApplicationController

	def new
		@submission = Submission.new
	
	end	

	def create
 		s=Submission.create(params[:submission].permit(:url,:notes,:player_id))
		redirect_to dashboard_url
	end	



end	