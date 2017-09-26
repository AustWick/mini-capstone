class CartedProduct < ApplicationRecord
  belongs_to :user_id
  belongs_to :president_id
  belongs_to :order_id, optional: true

  def create
    cart = CartedProduct.new(
                            user_id: current_user.id,
                            president_id: params[:president_id],
                            quantity: params[:quantity],
                            status: "carted"
                          end
    cart.save
    flash[:success] = "Carted"
    redirect_to "/checkout"
  end

  def index
    @cart = CartedProduct.where(user_id, status: "carted")
  end  
end