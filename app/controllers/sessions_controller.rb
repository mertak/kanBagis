class SessionsController < ApplicationController
  def new
  end

  def create
    donor = Donor.where(tcNo: params[:session][:tcNo]).first
    if donor && donor.authenticate(params[:session][:bloodGroup])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Yanlis tcNo/Kan Grubu!'
      render 'new'
    end
  end

  def destroy
  end

end
