class Admin < ActiveRecord::Base

  has_secure_password

  validates_presence_of :email
  validates_uniqueness_of :email

  def self.authenticate(email, password)
    Admin.find(params[:email]).try(:authenticate, password)
  end

  def Donor.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end
end
