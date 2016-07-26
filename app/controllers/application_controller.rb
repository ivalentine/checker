class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def letsencrypt
    render text: 'X__qO7ZLZ30XBfPLeGJS6JhGSIjH8ruuEJFhVcjQSWo.KBCxhm07gJJ40aNejiEpGkOD4ZBOGGeCf34xYuDMbMg'
  end

end
