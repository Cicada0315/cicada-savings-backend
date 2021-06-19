class UserSerializer < ActiveModel::Serializer
    attributes :firstname, :lastname, :username
end