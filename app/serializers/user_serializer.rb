class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :handle, :avatar_url
end
