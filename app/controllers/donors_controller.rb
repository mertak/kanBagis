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
      redirect_to @donor
    else
      render 'new'
    end
  end
end
