class ShoutoutDislikesController < ApplicationController
    def create
        dislike = ShoutoutDislike.create(shoutout_dislike_params)
        render json: dislike        
    end

    private

    def shoutout_dislike_params
        params.permit(:user_id, :shoutout_id)
    end
end
