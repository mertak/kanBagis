class ApplicationController < ActionController::Base
  include SessionsHelper
  include SessionAdminsHelper
  protect_from_forgery

  before_filter :require_login
  skip_before_filter :require_login, only: [:index,:new, :create]
  private
 
  def require_login
    unless logged_in? or admin_logged_in?
      redirect_to login_path 
      flash[:error] = "Buraya erisebilmek icin giris yapmaniz gerekiyor."
    end
  end

end
