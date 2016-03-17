class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  #Layaut para admin para todos los controlers
  layout :layout_by_resource

  protected
  def layout_by_resource
    if controller_name == 'sessions' || controller_name == 'registrations' || controller_name == 'passwords'
      'public'
    else
      'admin'
    end
  end

end
