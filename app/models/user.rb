class User < ApplicationRecord
    has_secure_password
    has_many :shoutouts
    has_many :secrets

    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
end
