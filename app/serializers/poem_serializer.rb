class PoemSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :lines, :linecount, :notes
end
