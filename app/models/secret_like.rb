class SecretLike < ApplicationRecord
  belongs_to :user
  belongs_to :secret
end
