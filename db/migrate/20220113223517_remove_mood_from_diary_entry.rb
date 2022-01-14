class RemoveMoodFromDiaryEntry < ActiveRecord::Migration[6.1]
  def change
    remove_column :diary_entries, :mood, :string
  end
end
