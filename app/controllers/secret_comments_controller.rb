class SecretCommentsController < ApplicationController

    def create
        comment = SecretComment.create(secret_comment_params)
        render json: comment
    end

    private

    def secret_comment_params
        params.permit(:content, :user_id, :secret_id)
    end
end
