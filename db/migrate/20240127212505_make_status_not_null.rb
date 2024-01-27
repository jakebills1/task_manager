class MakeStatusNotNull < ActiveRecord::Migration[7.1]
  def change
    Task.update_all status: :backlog
    change_column :tasks, :status, :integer, null: false
  end
end
