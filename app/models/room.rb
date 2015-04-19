class Room < ActiveRecord::Base
  attr_accessible :build, :proctor1, :proctor2, :date, :number, :time
end
