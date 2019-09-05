class ShoutoutLikesController < ApplicationController
    def create
        if current_user
            like = ShoutoutLike.create(shoutout_like_params)
            render json: like
        end
    end

    private

    def shoutout_like_params
        params.permit(:user_id, :shoutout_id)
    end
end
