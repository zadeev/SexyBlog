class Entry < ActiveRecord::Base
  belongs_to :user
  validates :header, :body, :user_id, presence: true
end
