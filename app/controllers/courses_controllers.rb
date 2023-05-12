class CoursesController <  ApplicationController
    #index courses route
    get '/courses' do
      courses = Course.all
      courses.to_json
    end

    get '/courses' do
      students = Student.find(params[:student_id])
      student = students.course.create(
        name:params[:name],
        description:params[:description],
        days:params[:days],
        image_url:params[:image_url]
      )
      course.to_json
    end
end