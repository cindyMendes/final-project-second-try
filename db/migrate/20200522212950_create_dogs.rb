class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :image
      t.string :breed
      t.string :color
      t.string :size
      t.string :location
      t.datetime :date
      t.text :description
      t.references :list, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
