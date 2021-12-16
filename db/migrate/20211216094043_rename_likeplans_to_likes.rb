class RenameLikeplansToLikes < ActiveRecord::Migration[6.1]
  def change
    rename_table :liked_plans, :likes
  end
end
