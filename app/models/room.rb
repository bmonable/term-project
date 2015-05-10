class Room < ActiveRecord::Base
   
  attr_accessible :build, :proctor1, :proctor2, :date, :number, :time
  
  
  def self.search(search)
  key = "%#{search}%"
  if search
    where('proctor1 LIKE ? OR proctor2 LIKE ? OR number LIKE ?', key, key,key)
  else
    all
  end
  end
  
#  def self.searchroom(searchroom)
#  key = "%#{searchroom}%"
#  if searchroom
#    where('number LIKE ?', key)
 # else
#    all
#  end
#  end
end
