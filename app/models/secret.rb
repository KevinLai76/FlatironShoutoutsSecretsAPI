class Secret < ApplicationRecord
  belongs_to :user
  has_many :secret_comments
  has_many :secret_likes
  has_many :secret_dislikes
end
