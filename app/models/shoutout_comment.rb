class ShoutoutComment < ApplicationRecord
  belongs_to :user
  belongs_to :shoutout
end
