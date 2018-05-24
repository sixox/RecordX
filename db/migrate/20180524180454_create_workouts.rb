class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :name
      t.references :muscle, foreign_key: true

      t.timestamps null: false
    end
  end
end
