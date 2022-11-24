class ProductsController < InheritedResources::Base
  before_action :authenticate_user!, except: [:index]
  private

    def product_params
      params.require(:product).permit(:name, :price, :type, :total_products,:u_id, :image)
    end

  # def index

  #   if current_user.brand?
  #   end
  # end
  
  respond_to do |format|
    format.turbo_stream do
      render turbo_stream: [turbo_stream.replace('cart',
                                                 partial: 'cart/cart',
                                                 locals: {cart: @cart})]
    end
  end


 
end
