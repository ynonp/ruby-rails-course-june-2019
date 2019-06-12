class CreateUseridInTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :user
    remove_column :tasks, :owner, :string
  end
end
