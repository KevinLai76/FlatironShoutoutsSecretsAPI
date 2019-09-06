class AuthController < ApplicationController
    def login
        user = User.find_by(username: params[:username])
        authenticated = user.authenticate(params[:password])
        
        if authenticated 
            render json: { token: encode_token(user_payload(user)) }
        else
            render json: { error: "Wrong username or password!" }
        end
    end
end
