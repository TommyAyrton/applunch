class CreatePedidos < ActiveRecord::Migration[6.0]
  def change
    create_table :pedidos do |t|
      t.references :entrada, null: false, foreign_key: true
      t.references :fondo, null: false, foreign_key: true
      t.references :bebida, null: false, foreign_key: true
      t.references :empleado, null: false, foreign_key: true
      t.references :mesa, null: false, foreign_key: true
      t.integer :estado

      t.timestamps
    end
  end
end
