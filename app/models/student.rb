class Students < ActiveRecord::Base
    has_many :courses
end
