json.array! @entradas, partial: "welcome/welcome", as: :entrada

json.array! @fondos, partial: "welcome/welcome", as: :fondo

json.array! @bebidas, partial: "welcome/welcome", as: :bebida

json.array! @mesas, partial: "welcome/welcome", as: :mesa

json.array! @pedidos, partial: "welcome/welcome", as: :pedido