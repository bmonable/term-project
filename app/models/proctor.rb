class Proctor < ActiveRecord::Base
  belongs_to :room
  attr_accessible :email, :name, :position, :tel, :room_id

  validates :email, :presence => true , uniqueness:true
  validates :position, :presence => true
  validates :tel, :presence => true
  validates :name, :presence => true , uniqueness:true
  
  def self.searchproctor(searchproctor)
  key = "%#{searchproctor}%"
  if searchproctor
    proctor=joins(:room)
    proctor.where('number LIKE ? OR name LIKE ?', key ,key)
  else
    all
  end
  end



end
