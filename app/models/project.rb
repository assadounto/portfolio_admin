class Project < ApplicationRecord
    
    has_many :project_technologies, dependent: :destroy
    has_many :technologies, through: :project_technologies
    has_many_attached :images
    validates :name, presence: true
    validates :name, uniqueness: true

    def photos
        images.map{|p| Rails.application.routes.url_helpers.url_for(p) }
    end
end
