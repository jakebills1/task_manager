class AssociateAssigneeWithTasks < ActiveRecord::Migration[7.1]
  def change
    add_reference :tasks, :assignee
  end
end
