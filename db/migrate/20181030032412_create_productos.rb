class CreateProductos < ActiveRecord::Migration[5.2]
  def change
    create_table :productos do |t|
      t.text :nombre
      t.text :precio

      t.timestamps
    end
  end
end
