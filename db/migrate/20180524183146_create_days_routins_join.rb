class CreateDaysRoutinsJoin < ActiveRecord::Migration[5.2]
  def change
    create_table :days_routins do |t|
      t.references :day, foreign_key: true
      t.references :routin, foreign_key: true
    end
    add_index :days_routins, ["day_id", "routin_id"]
    add_index :days_routins, ["routin_id", "day_id"]
  end
end
