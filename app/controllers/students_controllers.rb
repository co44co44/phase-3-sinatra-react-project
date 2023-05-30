class StudentsController <  ApplicationController
    

    # students index route: show all students
    get '/students' do
        students = Student.all.to_json(include: :courses)
    end
    
    # students show one student
    # get '/students/:id' do
    #     student = Student.find(params[:id])
    #     student.to_json(include: :courses)
    # end

    # adds a new student 
    post '/students' do
        student = Student.create(params)
        student.to_json(include: :courses)
    end

# # updates a student name
#     patch '/students/:id' do
#     student = Student.find(params[:id])
#     student.update(name: params[:name])
#     student.to_json
# end

# deletes a student with their courses.

    delete '/students/:id' do
        student = Student.find(params[:id])
        student.destroy 
        student.to_json
    end
end
