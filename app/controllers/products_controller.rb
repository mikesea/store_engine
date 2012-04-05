class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(params[:product])

    redirect_to @product, notice: 'Product was successfully created.'
  end

  def show
    @product = Product.find_by_id(params[:id])
  end

end