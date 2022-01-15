class UserPoemSerializer < ActiveModel::Serializer
  attributes :id, :notes
  has_one :poem
  has_one :user
end
