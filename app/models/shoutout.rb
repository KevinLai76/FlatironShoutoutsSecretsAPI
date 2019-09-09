class Shoutout < ApplicationRecord
  belongs_to :user
  has_many :shoutout_comments
  has_many :shoutout_likes
  has_many :shoutout_dislikes
end


