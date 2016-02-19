
module Session
  extend ActiveSupport::Concern
  
  module ClassMethods
    def as_user(value)
      before do
        if value.is_a?(Symbol)
          as_user(send(value))
        elsif block_given?
          as_user(yield)
        else
          as_user(value)
        end
      end
    end
  end
  
  def as_user(user)
    id = user.is_a?(ActiveRecord::Base) ? user.id : user
    request.headers['Authorization'] = "Bearer #{id}"
  end
end

RSpec.configure do |config|
  config.include Session
end