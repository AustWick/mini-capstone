class CartedProduct < ApplicationRecord
  belongs_to :user_id
  belongs_to :president_id
  belongs_to :order_id, optional: true

  def create
    carted_products = current_user.current_cart
    redirect_to "/checkout"
  end

  def index
    @cart = CartedProduct.where(user_id, status: "carted")
  end  
end