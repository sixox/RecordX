class CreateRourinsTrainsJoin < ActiveRecord::Migration[5.2]
  def change
    create_table :rourins_trains do |t|
      t.references :routin, foreign_key: true
      t.references :train, foreign_key: true
    end
    add_index :rourins_trains, ["train_id", "routin_id"]
    add_index :rourins_trains, ["routin_id", "train_id"]
  end
end
