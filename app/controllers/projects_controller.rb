class ProjectsController < ApplicationController
    before_action :authenticate_user! 
    def index
        @projects = Project.all
    end


    def new
        @project = Project.new
    end

    def show 
        @project = Project.find(params[:id])
    end

    def create
        @project = Project.new(project_params)
        return if current_user.role=="user"
        if @project.save
            redirect_to @project
        else
            render :new, status: :unprocessable_entity
          end
    end
 
    def destroy
        @project = Project.find(params[:id])
        return if current_user.role=="user"
        if @project.destroy
            redirect_to projects_path   
        end
    end
    
    def edit
        @project =Project.find(params[:id])
      end

     def update
        @project = Project.find(params[:id])
        return if current_user.role=="user"
        if @project.update(project_params)
            redirect_to @project
        else
            render :edit, status: :unprocessable_entity
        end
    end
    def project_params
        params.require(:project).permit(:name,:place,:title,:description,:livesource,:sourcecode,:thumb,images: [], technology_ids: [])
    end

end
