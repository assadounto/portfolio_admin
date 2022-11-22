class ProjectTechnologiesController < ApplicationController

def destroy
    @project_technology = ProjectTechnology.find_by(project_id: params[:id])
    if @project_technology.destroy
        redirect_to @project
    end
end
end

