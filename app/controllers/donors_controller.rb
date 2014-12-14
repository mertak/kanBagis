class DonorsController < ApplicationController
def show
    @donor = Donor.find(params[:id])
  end

  def new
    @donor = Donor.new
  end

  def create
    @donor = Donor.new(params[:donor])   
 
    if @donor.save
      log_in @donor
      flash[:success] = "Tebrikler, bagisci profiliniz olusturuldu!"
      redirect_to @donor
    else
      render 'new'
      flash[:error] = "Bagisci olusturulamadi"
    end
  end
end
