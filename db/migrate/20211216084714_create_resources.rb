class CreateResources < ActiveRecord::Migration[6.1]
  def change
    create_table :resources do |t|
      t.string :url
      t.references :plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
