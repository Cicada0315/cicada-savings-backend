class ApplicationController < ActionController::API
    def encode_token(payload) #{ user_id: 2 }
        JWT.encode(payload, 'my_s3cr3t') #issue a token, store payload in token
    end
end
