class Poem < ApplicationRecord
  has_many :user_poems
  has_many :users, through: :user_poems
end
