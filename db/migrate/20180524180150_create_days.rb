class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.datetime :date

      t.timestamps null: false
    end
  end
end
