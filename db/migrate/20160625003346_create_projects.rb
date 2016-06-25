class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :code_name
      t.date :due_date
      t.decimal :budget
      t.string :status

      t.timestamps null: false
    end
  end
end
