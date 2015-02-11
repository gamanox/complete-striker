class ProductsController < ApplicationController
  
  # GET /products
  # GET /products.json
  def index
    @products = Product.all
  end
  def home
    
  end
  def about
    
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])
    @category = Category.find(@product.category)
    @products = @category.products
  end

 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :description, :price)
    end
end
