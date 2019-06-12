class SetTaskOwnerToMandatory < ActiveRecord::Migration[5.2]
  def change
    change_column :tasks, :owner, :string, null: false
  end
end
