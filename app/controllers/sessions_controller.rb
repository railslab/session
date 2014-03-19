class SessionsController < ApplicationController
	def create
		cadastro = Cadastro.find_by_email(params[:email])
		if cadastro && cadastro.authenticate(params[:password])
			session[:id] = cadastro.id
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
