class ProductsController < ApplicationController
before_action :authenticate_user!, except: [:show]
before_action :set_product, only: [:edit, :update, :destroy, :show]

  def index
      @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = current_user.products.build(products_params)
    if @product.save
      redirect_to root_path
    end
  end

  def edit
  end

  def update
  end

private
  def products_params
    params.require(:product).permit(:user_id, :name, :description, :price, :count, {icons: []})
  end
def set_product
@product = Product.find(params[:id])
end



end
