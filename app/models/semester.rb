class Semester < ActiveRecord::Base
  has_many :records
  has_many :planners
end
