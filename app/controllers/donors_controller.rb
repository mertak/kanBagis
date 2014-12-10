class DonorsController < ApplicationController
def show
    @donor = Donor.find(params[:id])
  end

  def new
    @donor = Donor.new
  end
end
