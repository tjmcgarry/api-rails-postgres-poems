class User < ApplicationRecord
  has_many :user_poems
  has_many :poems, through: :user_poems
end
