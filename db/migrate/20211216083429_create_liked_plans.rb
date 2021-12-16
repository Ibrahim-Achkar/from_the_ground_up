class CreateLikedPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :liked_plans do |t|
      t.references :user, null: false, foreign_key: true
      t.references :plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
