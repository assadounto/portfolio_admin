class TechnologiesController < ApplicationController
    def index
        @tech = Technology.all
      end
    
      def new
        @tech = Technology.new
      end
    
      def create
        @tech = Technology.new(tech_params)
    
        if @tech.save
          redirect_to @tech
        else
          render :new, status: :unprocessable_entity
        end
      end
    
      private
        def tech_params
          params.require(:technology).permit(:name)
        end
end