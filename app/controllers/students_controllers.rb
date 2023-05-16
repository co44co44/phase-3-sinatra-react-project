class StudentsController <  ApplicationController
    # students index route
    get '/students' do
        students = Student.all
        students.to_json(include: :courses)
    end
    
    # students show route
    get '/students/:id' do
        student = Student.find_by(id: params[:id])
        student.to_json(include: :courses)
    end

    post '/students' do
        student = Student.create(params)
        student.to_json(include: :courses)
    end

    delete '/students' do
        country = Student.find_by(id: params[:id])
        country.destroy
        country.to_json
    end
end
