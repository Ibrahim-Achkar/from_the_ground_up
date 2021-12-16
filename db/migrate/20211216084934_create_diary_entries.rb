class CreateDiaryEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :diary_entries do |t|
      t.string :mood
      t.string :title
      t.text :content
      t.references :plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
