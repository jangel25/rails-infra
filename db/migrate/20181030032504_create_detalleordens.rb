class CreateDetalleordens < ActiveRecord::Migration[5.2]
  def change
    create_table :detalleordens do |t|
      t.text :cantidad
      t.text :precioventa
      t.references :orden, foreign_key: true
      t.references :producto, foreign_key: true

      t.timestamps
    end
  end
end
