class CreateOrdens < ActiveRecord::Migration[5.2]
  def change
    create_table :ordens do |t|
      t.text :numero
      t.text :fecha
      t.references :cliente, foreign_key: true

      t.timestamps
    end
  end
end
