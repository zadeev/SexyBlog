class Entry < ActiveRecord::Base
  belongs_to :user
  validates :header, :body, :user_id, presence: true

  def plus_rating
  	self.rating += 1
  	self.save!
  end
  
  def minus_rating
  	self.rating -= 1
  	self.save!
  end


end
