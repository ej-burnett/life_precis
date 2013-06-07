class NotesController < ApplicationController

	def create
		@note = User.find(session[:user_id]).notes.new(params[:note])

		if @note.save
			render :json => @note
		end
	end


end
