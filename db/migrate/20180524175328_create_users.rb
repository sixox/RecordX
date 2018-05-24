class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :phone
      t.string :password
      t.references :role, foreign_key: true

      t.timestamps nall: false
    end
  end
end
