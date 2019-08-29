class User < ApplicationRecord
    has_secure_password
    has_many :shoutouts
    has_many :secrets
end
