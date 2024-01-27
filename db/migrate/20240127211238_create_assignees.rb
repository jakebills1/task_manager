class CreateAssignees < ActiveRecord::Migration[7.1]
  def change
    create_table :assignees do |t|
      t.string :name
      t.string :job_title

      t.timestamps
    end
  end
end
