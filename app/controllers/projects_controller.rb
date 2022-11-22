class ProjectsController < ApplicationController

    def index
        @project = Project.all
        # render json: ProjectSerializer.new(@project).serializable_hash[:data][:attributes]
    end


    def new
        @project = Project.new
    end
    def show 
        @project = Project.find(params[:id])
    end
    def create
        @project = Project.new(project_params)
        if @project.save
            redirect_to @project
        else
            render :new, status: :unprocessable_entity
          end
    end
 
    def destroy
        @project = Project.find(params[:id])
        if @project.destroy
            redirect_to projects_path   
        end
    end
    
    def edit
        @project =Project.find(params[:id])
      end

     def update
        @project = Project.find(params[:id])
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
