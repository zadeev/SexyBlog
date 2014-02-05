class User < ActiveRecord::Base
  has_secure_password
  has_many :entries

  def to_param
  	name
  end
end
