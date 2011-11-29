class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :position
  
  validates :name, :presence => true
     #              :uniqueness => true
  validates :password, :presence => true
  validates :email, :presence => true
     #               :uniqueness => true
  validates :position, :presence => true
  
  def has_password(submitted_password)
    password == submitted_password
  end
  
  def self.authenticate(name, submitted_password)
    user = find_by_name(name)
    return nil if user.nil?
    return user if user.has_password(submitted_password)
  end
  
end
