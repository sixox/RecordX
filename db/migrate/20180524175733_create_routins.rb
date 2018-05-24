class CreateRoutins < ActiveRecord::Migration[5.2]
  def change
    create_table :routins do |t|
      t.string :name
      t.references :user, foreign_key: true

      t.timestamps nall: false
    end
  end
end
