class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create!(product_params)
    respond_to do |format|
      if @product.save
      format.html { redirect_to products_path, notice: "Новая книга добавлена" }
      format.json { render json: @resource }
    end
    end
  end

  def product_params
      params.require(:product).permit(:title, :description, :price, :img_url)
  end
end
