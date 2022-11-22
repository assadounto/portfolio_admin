class ProjectSerializer
  include JSONAPI::Serializer
  attributes :id, :name, :place, :title, :description, :livesource, :sourcecode, :thumb, :photos,  :technologies
end
