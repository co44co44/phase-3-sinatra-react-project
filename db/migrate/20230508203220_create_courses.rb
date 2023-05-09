class CreateCourses < ActiveRecord::Migration[6.1]
    def change
      create_table :courses do |t|
        t.string :name
        t.integer :description
        t.string :days
        t.string :image_url
        t.integer :student_id
        
    end
  end
end
