class Proctor < ActiveRecord::Base
  belongs_to :room
  attr_accessible :email, :name, :position, :tel, :room_id

    validates :email, :presence => true
  validates :position, :presence => true
  validates :tel, :presence => true
  validates :name, :presence => true
end
