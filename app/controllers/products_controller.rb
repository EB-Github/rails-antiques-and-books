class ProductsController < ApplicationController
  def new
  end
  
  def index
    @products = Product.all
  end
  
  def create
   @product = Product.new(product_params)
  if @product.save
    redirect_to @product
  else
    render 'new'
  end
  end
  
  def show
    @product=Product.find(params[:id])
  end
  
  def edit
      @product = Product.find(params[:id])
  end
  
  def update
     @product=Product.find(params[:id])
      if @product.update_attributes(product_params)
      # Handle a successful update.
      redirect_to @product
      else
      render 'edit'
      end
  end
  
  def destroy
    Product.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to products_url
  end
  
  def kind(number)
    sNumber_to_kind = {"1" => "Book", "2" => "Item", "3" => "furniture"}
    return sNumber_to_kind[number.to_s]
  end
  
  def product_params
      params.require(:product).permit(:name, :description, :kind,
                                   :imagesrc)
  end
end
