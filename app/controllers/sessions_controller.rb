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
		session[:logado] = false
		redirect_to root_path
	end
end
