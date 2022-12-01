class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        has_one_attached :image

        has_many :projects, dependent: :destroy
        has_many :project_technologies, through: :projects
        has_many :technologies, through: :project_technologies

        def admin?
          self.role == "admin"
        end
end
