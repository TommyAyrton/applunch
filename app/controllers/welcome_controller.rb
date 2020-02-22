class WelcomeController < ApplicationController
  before_action :set_entrada, only: [:show]
  before_action :set_fondo, only: [:show]
  before_action :set_bebida, only: [:show]
  before_action :set_mesa, only: [:show]
  before_action :set_pedido, only: [:show]

   # GET /entradas
  # GET /entradas.json
   # GET /fondos
  # GET /fondos.json
  # GET /bebidas
  # GET /bebidas.json 

  def index
    @entradas = Entrada.all
    @fondos = Fondo.all
    @bebidas = Bebida.all
    @mesas = Mesa.all
    @pedidos = Pedido.all
  end

  def add_to_entrada
    entrada = Entrada.find(params[:id])
    @menu = find_menu
    @menu.add_product(entrada)
  rescue ActiveRecord::RecordNotFound
    logger.error("Attempt to access invalid product #{params[:id]}")
    flash[:notice] = "Invalid product"
    redirect_to :action => 'index'
  end

  def add_to_fondo
    fondo = Fondo.find(params[:id])
    @menu = find_menu
    @menu.add_product(fondo)
  end

  def add_to_bebida
    bebida = Bebida.find(params[:id])
    @menu = find_menu
    @menu.add_product(bebida)
  end

  private

  def fin_menu
    unless user_session[:menu]
      user_session[:menu] = Menu.new      
    end
    session[:menu]
  end

end
