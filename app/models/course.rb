class Course < ActiveRecord::Base
  belongs_to :department
  has_many :records
  has_many :planners
  has_many :required_courses
  
  def display_name
    self.department.acronym + self.number.to_s + ' ' + self.title
  end
end
