class Shoutout < ApplicationRecord
  belongs_to :user
  has_many :shoutout_comments, dependent: :nullify
  has_many :shoutout_likes, dependent: :nullify
  has_many :shoutout_dislikes, dependent: :nullify
end


