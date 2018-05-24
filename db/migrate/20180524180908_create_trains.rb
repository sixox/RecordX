class CreateTrains < ActiveRecord::Migration[5.2]
  def change
    create_table :trains do |t|
      t.integer :set
      t.integer :rep
      t.references :weight, foreign_key: true
      t.references :workout, foreign_key: true

      t.timestamps null: false
    end

  end
end
