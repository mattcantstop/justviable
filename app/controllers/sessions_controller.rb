class SessionsController < ApplicationController

	def new
		@session = Session.new(params[:id])
	end

	def destroy

	end

end
