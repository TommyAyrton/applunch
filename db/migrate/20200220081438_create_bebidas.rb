class CreateBebidas < ActiveRecord::Migration[6.0]
  def change
    create_table :bebidas do |t|
      t.string :nombre
      t.text :descripcion
      t.string :imagen
      t.integer :estado
      
      t.timestamps
    end
  end
end
