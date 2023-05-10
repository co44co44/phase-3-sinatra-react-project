class CoursesController <  ApplicationController
    #index courses route
    get '/courses' do
      courses = Course.all
      courses.to_json
    end
end