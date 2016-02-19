class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :retweets, dependent: :destroy
  has_many :likes, dependent: :destroy
  
  validates :text, presence: true
end
