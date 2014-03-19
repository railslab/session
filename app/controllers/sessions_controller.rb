class SessionsController < ApplicationController
	def create
		session[:logado] = true
		redirect_to root_path
	end

	def destroy
		session[:logado] = false
		redirect_to root_path
	end
end