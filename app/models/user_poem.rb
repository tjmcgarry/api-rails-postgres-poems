class UserPoem < ApplicationRecord
  belongs_to :poem
  belongs_to :user
end
