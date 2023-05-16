class CoursesController <  ApplicationController
    #index courses route
    get '/courses' do
      courses = Course.all
      courses.to_json
    end

    post '/courses' do
      students = Student.find_by(params[:student_id])
      student = students.course.create(
        name:params[:name],
        description:params[:description],
        days:params[:days],
        image_url:params[:image_url]
      )
      course.to_json
    end

    delete '/courses/:id' do
      course = Course.find(params[:id])
      course.destroy
      course.to_json
    end

end