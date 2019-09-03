class ApplicationController < ActionController::API
    def encode_token(payload)
        JWT.encode(payload, "password", "HS256")
    end
    
    def user_payload(user)
        { user_id: user.id }
    end

    def token 
        request.headers["Authorization"]
    end

    def decode_token
        JWT.decode(token, "password", true, { algorithm: "HS256" })
    end

    def current_user
        User.find(decode_token[0]['user_id'])
    end

end
