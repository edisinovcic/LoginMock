class AuthenticationSerializer < ActiveModel::Serializer
  attributes :id, :username, :password
end
