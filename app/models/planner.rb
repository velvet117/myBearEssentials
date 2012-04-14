class Planner < ActiveRecord::Base
  belongs_to :user
  belongs_to :semester
  belongs_to :course
end
