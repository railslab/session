class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :logado?
  helper_method :usuario_logado

  def logado?
    session_id.present?
  end

  def acesso_restrito!
    redirect_to login_path unless logado?
  end

  def session_id
  	session[:id]
  end

  def usuario_logado
  	Cadastro.find session_id rescue nil
  end
end
