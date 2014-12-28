class SessionAdminsController < ApplicationController

  def create
    admin = Admin.where(tcNo: params[:session][:tcNo]).first
    if admin && admin.authenticate(params[:session][:password])
      log_in admin
      redirect_to admin
    else
      flash[:error] = 'Yanlis E-Posta/Sifre!'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    flash[:notice] = "Cikis yaptiniz."
    redirect_to root_url
  end
end
