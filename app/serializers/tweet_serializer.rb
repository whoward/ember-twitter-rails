class TweetSerializer < ActiveModel::Serializer
  attributes :id, :text
  attribute :user_id, key: :author_id
  
  attribute :likes do
    object.likes.count
  end
  
  attribute :retweets do
    object.retweets.count
  end
  
  belongs_to :user, key: :author
end
