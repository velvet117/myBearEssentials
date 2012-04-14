class SpecificRequirement < ActiveRecord::Base
  belongs_to :requirement
  belongs_to :degree
end
