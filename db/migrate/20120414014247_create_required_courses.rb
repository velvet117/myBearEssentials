class CreateRequiredCourses < ActiveRecord::Migration
  def change
    create_table :required_courses do |t|
      t.integer :requirement_id
      t.integer :course_id

      t.timestamps
    end
  end
end
