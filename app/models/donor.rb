class Donor < ActiveRecord::Base
  attr_accessible :bloodGroup, :bloodType, :donateTime, :lastname, :location, :name, :tcNo, :tel
end
