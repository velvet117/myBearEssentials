class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :user_id
      t.integer :semester_id
      t.integer :course_id

      t.timestamps
    end
  end
end
