class ShoutoutCommentsController < ApplicationController
    def create
        comment = ShoutoutComment.create(shoutout_comment_params)
        render json: comment
    end

    private

    def shoutout_comment_params
        params.permit(:content, :user_id, :shoutout_id)
    end
end
