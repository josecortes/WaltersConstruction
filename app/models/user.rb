class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :position
  
#  validates :name, :presence => true
#  validates :password, :presence => true
#  validates :email, :presence => true
#  validates :position, :presence => true
end
