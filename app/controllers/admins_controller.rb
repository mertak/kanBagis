class AdminsController < ApplicationController

  def show
    @admin = Admin.find(params[:id])
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)   
 
    if @admin.save
      log_in @admin
      flash[:success] = "Tebrikler, admin profiliniz olusturuldu!"
      redirect_to @admin
    else
      render 'new'
      flash[:error] = "Admin olusturulamadi"
    end
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def update
        @admin = Admin.find(params[:id])
    if @admin.update_attributes(params[:admin])
      # Handle a successful update.
    else
      render 'edit'
    end
  end

 def admin_params
    params.require(:admin).permit(:name, :email, :password, :encrypted_password)
  end
end
