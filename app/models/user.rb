class User < ActiveRecord::Base
  has_secure_password
  has_many :entries

  def to_param
  	name
  end

  def make_admin
  	self.admin = true
  	self.save!
  end

end
