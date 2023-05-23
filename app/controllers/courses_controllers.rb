class CoursesController <  ApplicationController
  
  # index courses route: show all courses
    get '/courses' do
      courses = Course.all
      courses.to_json
    end

  #adds course 
    post '/courses' do
      # binding.pry
      course = Course.create(
        name:params[:name],
        description:params[:description],
        days:params[:days],
        image_url:params[:image_url],
        student_id: params[:student_id]
      )
      course.to_json
    end

  #updates course info
    patch '/courses/:id' do
      course = Course.find(params[:id])
      course.update(
        name:params[:name],
        description:params[:description],
        days:params[:days],
        image_url:params[:image_url]
      )
      course.to_json
  end 

  #deletes a course
    # delete '/courses/:id' do
    #   course = Course.find(params[:id])
    #   course.destroy
    #   course.to_json
    # end


end