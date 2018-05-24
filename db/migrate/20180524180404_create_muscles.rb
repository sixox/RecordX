class CreateMuscles < ActiveRecord::Migration[5.2]
  def change
    create_table :muscles do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
