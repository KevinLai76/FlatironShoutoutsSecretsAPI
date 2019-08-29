class SecretDislikesController < ApplicationController
    def create 
        dislike = SecretDislike.create(secret_dislike_params)
        render json: dislike
    end

    private

    def secret_dislike_params
        byebug
        params.permit(:user_id, :secret_id)
    end
end
