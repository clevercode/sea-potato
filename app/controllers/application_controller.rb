class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def ugly_fake_route

    render :text => "You look nice today.", :layout => 'application'

  end
end
