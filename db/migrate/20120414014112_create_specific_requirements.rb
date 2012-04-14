class CreateSpecificRequirements < ActiveRecord::Migration
  def change
    create_table :specific_requirements do |t|
      t.integer :degree_id
      t.integer :requirement_id
      t.integer :units

      t.timestamps
    end
  end
end
