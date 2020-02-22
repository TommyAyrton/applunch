class Mesa < ApplicationRecord
    has_many :pedidos, dependent: :destroy
    accepts_nested_attributes_for :pedidos
end
