class Room < ActiveRecord::Base
   
  attr_accessible :build, :number
  
  validates :build, :presence => true
  validates :number, :presence => true
end
