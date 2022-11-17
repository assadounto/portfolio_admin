class Projects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
    t.string :name
    t.string :place
    t.string :title
    t.string :year
    t.text :description
    t.string :livesource
    t.string :sourcecode
    t.string :cover
    t.string :thumb
    t.timestamps
    end
  end
end
