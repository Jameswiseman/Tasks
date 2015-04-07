class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :user, index: true
      t.string :task_name
      t.text :task_description
      t.date :task_completion_date
      t.time :task_completion_time
      t.boolean :status
      t.references :clients, index: true

      t.timestamps
    end
  end
end
