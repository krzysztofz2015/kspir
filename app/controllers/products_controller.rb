class ProductsController < ApplicationController
  def create
    @client = Client.find(params[:client_id])
    @product = @client.products.create(product_params)
    redirect_to client_path(@client)
  end
  
  def destroy
    @client = Client.find(params[:client_id])
    @product = @client.products.find(params[:id])
    @product.destroy
    redirect_to client_path(@client)
  end
 
  private
    def product_params
      params.require(:product).permit(:product_name, :number, :price)
    end
end
