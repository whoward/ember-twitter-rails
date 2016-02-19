class User < ActiveRecord::Base
  has_many :retweets, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :tweets, dependent: :destroy
  
  validates :handle, presence: true, uniqueness: true
  
  validates :name, presence: true
  
  validates :avatar_url, presence: true
  
  def guest?
    false
  end
end
