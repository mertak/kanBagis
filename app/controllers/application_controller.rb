class ApplicationController < ActionController::Base
  include SessionsHelper
  protect_from_forgery

  before_filter :require_login
  skip_before_filter :require_login, only: [:index,:new, :create]
  private
 
  def require_login
    unless logged_in?
      flash[:error] = "Buraya erisebilmek icin giris yapmaniz gerekiyor."
      redirect_to login_path 
    end
  end

end
