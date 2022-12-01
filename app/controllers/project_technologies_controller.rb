class ProjectTechnologiesController < ApplicationController
    before_action :authenticate_user!
def destroy
    @project_technology = ProjectTechnology.find_by(project_id: params[:id])
    return if current_user.role=="user"
    if @project_technology.destroy
        redirect_to @project
    end
end
end

