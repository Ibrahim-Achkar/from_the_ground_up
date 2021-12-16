class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :due_date
      t.string :action
      t.references :plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
