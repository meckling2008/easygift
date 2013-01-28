class PagesController < HighVoltage::PagesController
  # before_filter :authenticate_user!
  layout :layout_for_page

  protected

    def layout_for_page
      'content_parent'
      # If you need a different layout for different pages:
      # case params[:id]
      # when 'home'
      #   'content_parent'
      # else
      #   'application'
      # end
    end
end
