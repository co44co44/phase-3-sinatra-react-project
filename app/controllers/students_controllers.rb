class StudentsController <  ApplicationController
    # students index route
    get '/students' do
        students = Student.all
        students.to_json(include: :courses)
    end
    
    # students show route
    get '/students/:id' do
        student = Student.find_by(params[:id])
        student.to_json(include: :courses)
    end
end