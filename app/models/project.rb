class Project < ApplicationRecord
    has_many :project_technologies
    has_many :technologies, through: :project_technologies

    validates :name, presence: true
    validates :name, uniqueness: true
end
