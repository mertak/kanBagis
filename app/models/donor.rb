class Donor < ActiveRecord::Base
  validates :name, length: {maximum: 50,
   too_long: "en fazla %{count} karakter olabilir"}, presence: true
  validates :lastname, length: {maximum: 50,
    too_long: "en fazla %{count} karakter olabilir"}, presence: true
  validates :bloodGroup, presence: true
  validates :tcNo, length: {is: 11,
     too_long: "%{count} karakter olmalidir",
     too_short: "%{count} karakter olmalidir"}, presence: true, 
     numericality: { only_integer: true, even: true }, uniqueness: true
  validates :tel, length: {is: 10, 
     too_long: "%{count} karakter olmalidir",
     too_short: "%{count} karakter olmalidir"}, presence: true, numericality: { only_integer: true }, uniqueness: true
  
  has_secure_password
  validates :password, length: { minimum: 6 }

  #Aldigi stringin hashlenmis ozetini donduruyor.
  def Donor.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

end

