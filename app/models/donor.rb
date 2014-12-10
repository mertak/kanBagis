class Donor < ActiveRecord::Base
  attr_accessible :bloodGroup, :bloodType, :donateTime, :lastname, :location, :name, :tcNo, :tel
  validates :name, length: {maximum: 50,
   too_long: "must have at most %{count} chars"}, presence: true
  validates :lastname, length: {maximum: 50,
    too_long: "must have at most %{count} chars"}, presence: true
  validates :bloodGroup, length: {maximum: 7,
    too_long: "must have at most %{count} chars"}, presence: true
  validates :tcNo, length: {is: 11,
     too_long: "must have %{count} chars",
     too_short: "must have %{count} chars"}, presence: true, numericality: { only_integer: true }
  validates :tel, length: {is: 10, 
     too_long: "must have %{count} chars",
     too_short: "must have %{count} chars"}, presence: true, numericality: { only_integer: true }
end
