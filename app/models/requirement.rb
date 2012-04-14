class Requirement < ActiveRecord::Base
  has_many :required_courses
  has_many :specific_requirements
end
