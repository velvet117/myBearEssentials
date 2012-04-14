class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.integer :department_id
      t.integer :number
      t.string :title
      t.integer :units
      t.integer :difficulty

      t.timestamps
    end
  end
end
