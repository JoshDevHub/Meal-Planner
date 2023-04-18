class CreateMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :heat_rating
      t.string :cuisine_type
      t.integer :recency_weight

      t.timestamps
    end
  end
end
