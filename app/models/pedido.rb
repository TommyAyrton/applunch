class Pedido < ApplicationRecord
  belongs_to :entrada
  belongs_to :fondo
  belongs_to :bebida
  belongs_to :empleado
  belongs_to :mesa  

end
