class ShoutoutsController < ApplicationController
    def index 
        shoutouts = Shoutout.all
        render json: shoutouts, include: [:shoutout_comments, :shoutout_likes, :shoutout_dislikes]
    end

    def create
        shoutout = Shoutout.create(shoutout_params)
        render json: shoutout, include: [:shoutout_comments, :shoutout_likes, :shoutout_dislikes]
    end

    # def destroy
    #     shoutout = Shoutout.find(shoutout_params["id"])
    #     shoutout.destroy
    #     render json: shoutout
    # end

    private

    def shoutout_params
        params.permit(:id, :content, :user_id)
    end
end
