class Api::V1::ProjectsController < ApplicationController
    def index
        @projects = Project.all
        render json: ProjectSerializer.new(@projects).serializable_hash
    end


    def show 
        @project = Project.find(params[:id])
        render json: ProjectSerializer.new(@project).serializable_hash[:data][:attributes]
    end
end
