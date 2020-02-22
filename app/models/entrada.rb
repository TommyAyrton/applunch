class Entrada < ApplicationRecord
    has_many :pedidos, dependent: :destroy
    accepts_nested_attributes_for :pedidos
    mount_uploader :imagen, PictureUploader
    
end
