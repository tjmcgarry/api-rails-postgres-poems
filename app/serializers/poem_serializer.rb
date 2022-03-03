class PoemSerializer < ActiveModel::Serializer
  attributes :title, :author, :lines, :linecount, :text_characters, :score, :label, :sadness, :joy, :fear, :disgust, :anger 
end
