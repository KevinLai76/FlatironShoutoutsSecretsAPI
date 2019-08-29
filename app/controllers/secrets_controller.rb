class SecretsController < ApplicationController
    def index
        secrets = Secret.all
        render json: secrets, include: [:secret_comments, :secret_likes, :secret_dislikes]
    end

    def show
        secret = Secret.find(params[:id])
        render json: secret, include: [:secret_comments]
    end

    def create
        byebug
        secret = Secret.create(secret_params)
        render json: secret
    end

    private
    
    def secret_params
        params.permit(:content, :user_id)    
    end

end
