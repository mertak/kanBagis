class SessionAdminsController < ApplicationController

  def new
  end

  def create
    admin = Admin.find_by(email: params[:session][:email].downcase)
    if admin && admin.authenticate(params[:session][:password])
      admin_log_in admin
      redirect_to admin
    else
      flash[:error] = 'Yanlis E-Posta/Sifre!'
      render 'new'
    end
  end

  def destroy
    admin_log_out if admin_logged_in?
    flash[:notice] = "Cikis yaptiniz."
    redirect_to root_url
  end
end
