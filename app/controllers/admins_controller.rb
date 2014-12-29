class AdminsController < ApplicationController

before_filter :require_admin
skip_before_filter :require_admin, only: [:index,:new, :create, :update]

  def require_admin
    unless admin_logged_in?
      flash[:error] = "Bu kisima erisim icin admin girisi yapmak gerekir"
      redirect_to "/admins/"
    end
  end

  def panel
  end

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
    if @admin.update_attributes(admin_params)
      redirect_to(@admin)
    else
      render 'edit'
    end
  end

 def admin_params
    params.require(:admin).permit(:name, :email, :password, :encrypted_password)
  end
end
