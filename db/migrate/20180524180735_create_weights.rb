class CreateWeights < ActiveRecord::Migration[5.2]
  def change
    create_table :weights do |t|
      t.float :value

      t.timestamps null: false
    end
  end
end
