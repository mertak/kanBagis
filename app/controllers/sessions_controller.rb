class SessionsController < ApplicationController
  def new
  end

  def create
    donor = Donor.where(tcNo: params[:session][:tcNo]).first
    if donor && donor.authenticate(params[:session][:password])
      log_in donor
      redirect_to donor
    else
      flash.now[:danger] = 'Yanlis TCNo/Sifre!'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end
