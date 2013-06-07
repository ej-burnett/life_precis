class NotesController < ApplicationController

	def create
		@note = User.find(session[:user_id]).notes.new(params[:note])

		if @note.save
			redirect_to users_path
		end
	end


end
