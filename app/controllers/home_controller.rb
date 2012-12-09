class HomeController < ApplicationController
  
  before_filter :authenticate_user!

  def index
    authorize! :index, :home
  end

end
