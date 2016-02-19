
module GuestUser
  module_function
  
  NAME = 'guest'.freeze
  AVATAR_URL = 'http://example.com/avatar.png'.freeze
  EMPTY_ARRAY = [].freeze
  
  def name
    NAME
  end
  
  # TODO: replace with real guest avatar 
  def avatar_url
    AVATAR_URL
  end
  
  def handle
    nil
  end
  
  def likes
    EMPTY_ARRAY
  end
  
  def retweets
    EMPTY_ARRAY
  end
  
  def tweets
    EMPTY_ARRAY
  end
  
  def guest?
    true
  end
end