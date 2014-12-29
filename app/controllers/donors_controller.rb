class DonorsController < ApplicationController

  def show
    @donor = Donor.find(params[:id])
  end

  def new
    @donor = Donor.new
  end

  def create
    @donor = Donor.new(donor_params)   
 
    if @donor.save
      log_in @donor
      flash[:success] = "Tebrikler, bagisci profiliniz olusturuldu!"
      redirect_to @donor
    else
      render 'new'
      flash[:error] = "Bagisci olusturulamadi"
    end
  end

  def edit
    @donor = Donor.find(params[:id])
  end

  def update
        @donor = Donor.find(params[:id])
    if @donor.update(donor_params)
      redirect_to(@donor)
    else
      render 'edit'
    end
  end

 def donor_params
    params.require(:donor).permit(:name, :lastname, :bloodGroup, :tel, :tcNo, :location, :bloodType, :donateTime, :password, :encrypted_password)
  end
end
