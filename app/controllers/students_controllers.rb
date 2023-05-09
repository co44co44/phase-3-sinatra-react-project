class StudentsController <  ApplicationController
    # students index route
    get '/students' do
        students = Student.all
        students.to_json(include: :courses)
    end
    
end