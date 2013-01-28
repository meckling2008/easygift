class ApplicationController < ActionController::Base
  protect_from_forgery

  layout :layout_by_resource

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  # Custom layouts for devise controllers http://goo.gl/OKTKT
  def layout_by_resource
    devise_controller? ? "login" : "application"
  end

end
