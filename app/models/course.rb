class Course < ActiveRecord::Base
  belongs_to :department
  has_many :records
  has_many :planners
  has_many :required_courses
end
