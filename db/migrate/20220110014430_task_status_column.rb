class TaskStatusColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :status, :string, default: 'pending'
  end
end
