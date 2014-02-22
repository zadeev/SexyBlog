class Entry < ActiveRecord::Base
  belongs_to :user
  has_many :votes
  has_many :comments
  validates :header, :body, :user_id, presence: true




end
