class StudentsController <  ApplicationController
    # students index route
    get '/students' do
        students = Student.all
        students.to_json(include: :courses)
    end
    
    # students show route
    get '/students/:id' do
        student = Student.find_by(id: params[:id])
        
      if student
        student.to_json(include: :courses)
      else
        "404 - Student not found"
      end
    end
end