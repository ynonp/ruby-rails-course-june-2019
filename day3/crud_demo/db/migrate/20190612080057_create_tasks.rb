class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :owner
      t.text :description
      t.integer :priority, default: 1
      t.integer :completed, default: false

      t.timestamps
    end
  end
end
