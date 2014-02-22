class User < ActiveRecord::Base
  has_secure_password
  has_many :entries
  has_many :votes
  has_many :comments

  def to_param
  	name
  end

  def make_admin
  	self.admin = true
  	self.save!
  end

  def unmake_admin
  	self.admin = false
  	self.save!
  end


end
