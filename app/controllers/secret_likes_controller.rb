class SecretLikesController < ApplicationController
    def create
        like = SecretLike.create(secret_like_params)
        render json: like
    end

    private

    def secret_like_params
        params.permit(:user_id, :secret_id)
    end
end
