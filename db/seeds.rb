# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Technology.destroy_all
Project.destroy_all
# Create 1 admin user
User.create!(
    name: "Richmond",
    email: "adukyerer@gmail.com",
    password: "featured44",
    password_confirmation: "featured44",
    role: "admin"
)

# create 10 project technologies
Project.create!([{
    name: "Project 1",
    place: "Place 1",
    title: "Title 1",
    year: "2021",
    description: "Description 1",
    livesource: "Livesource 1",
    sourcecode: "Sourcecode 1",
    cover: "Cover 1",
    thumb: "Thumb 1"},
    {
    name: "Project 2",
    place: "Place 2",
    title: "Title 2",
    year: "2021",
    description: "Description 2",
    livesource: "Livesource 2",
    sourcecode: "Sourcecode 2",
    cover: "Cover 2",
    thumb: "Thumb 2"},
    {
    name: "Project 3",
    place: "Place 3",
    title: "Title 3",
    year: "2021",
    description: "Description 3",
    livesource: "Livesource 3",
    sourcecode: "Sourcecode 3",
    cover: "Cover 3",
    thumb: "Thumb 3"},
])

Technology.create!([
    {name: "HTML"},
    {name: "CSS"},
    {name: "JavaScript"},
    {name: "Ruby"},
    {name: "Ruby on Rails"},
    {name: "React"},
    {name: "Redux"},
    {name: "Node"},
    {name: "Express"},
    {name: "MongoDB"},
    {name: "SQL"},
    {name: "PostgreSQL"},
    {name: "Git"},
    {name: "GitHub"},
    {name: "Heroku"},
    {name: "Netlify"},
    {name: "VS Code"},
    {name: "Terminal"},
    {name: "Postman"},
    {name: "Figma"},
    {name: "Adobe XD"},
    {name: "Adobe Photoshop"},
    {name: "Adobe Illustrator"},
])
  
ProjectTechnology.create!([
    {project_id: 1, technology_id: 1},
    {project_id: 1, technology_id: 2},
    {project_id: 1, technology_id: 3},
    {project_id: 1, technology_id: 4},
    {project_id: 1, technology_id: 5},
    {project_id: 1, technology_id: 6},  
    {project_id: 2, technology_id: 7},
    {project_id: 2, technology_id: 8},
    {project_id: 2, technology_id: 9},
    {project_id: 3, technology_id: 10},
    {project_id: 3, technology_id: 11},
    {project_id: 3, technology_id: 12},

])
  
