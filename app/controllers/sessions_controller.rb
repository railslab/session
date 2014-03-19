class SessionsController < ApplicationController
	def create
		if params[:password] == '123'
			session[:logado] = true
			redirect_to root_path
		else
			render :new
		end
	end

	def destroy
		reset_session
		redirect_to root_path
	end
end
