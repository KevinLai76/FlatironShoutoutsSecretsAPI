class ShoutoutDislikesController < ApplicationController
    def create
        if current_user
            dislike = ShoutoutDislike.create(shoutout_dislike_params)
            render json: dislike        
        end
    end

    private

    def shoutout_dislike_params
        params.permit(:user_id, :shoutout_id)
    end
end
