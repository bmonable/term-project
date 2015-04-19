class Proctor < ActiveRecord::Base
  attr_accessible :email, :name, :position, :tel

    validates :email, :presence => true
  validates :position, :presence => true
  validates :tel, :presence => true
  validates :name, :presence => true
end
