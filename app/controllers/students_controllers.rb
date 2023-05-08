class StudentsController <  ApplicationController
    # index courses route
    get '/students' do
        students = student.all
        students.to_json
        "Im students controller"
      end
    
end