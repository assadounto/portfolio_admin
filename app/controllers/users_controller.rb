class UsersController < ApplicationController
    before_action :authenticate_user!
    def index
        @user = current_user
    end
    
    # GET /users/1
    # GET /users/1.json
end