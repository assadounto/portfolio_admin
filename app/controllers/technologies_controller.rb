class TechnologiesController < ApplicationController
  before_action :authenticate_user!

    def index
        @tech = Technology.all
      end
    
      def new
        @tech = Technology.new
      end
    
      def create
        @tech = Technology.new(tech_params)
         return if current_user.role=="user"
        if @tech.save
          redirect_to @tech
        else
          render :new, status: :unprocessable_entity
        end
      end

      def destroy
        @tech = Technology.find(params[:id])
        return if current_user.role=="user"
      if @tech.destroy
        redirect_to technologies_path
      end
    end
    
      private
        def tech_params
          params.require(:technology).permit(:name)
        end
end