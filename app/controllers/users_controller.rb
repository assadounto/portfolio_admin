class UsersController < ApplicationController
    before_action :authenticate_user!
    def index
        @user = current_user
    end
    
    # GET /users/1
    # GET /users/1.json
    def show
        @user = User.find(params[:id])
    
        respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @user }
        end
    end
end