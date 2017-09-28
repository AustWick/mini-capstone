class OrdersController < ApplicationController
  def create
    order = Order.new(
                      user_id: current_user.id,
                      quantity: params[:quantity],
                      president_id: params[:president_id],
                      subtotal: President.find(params[:president_id]).price.to_i * params[:quantity].to_i,
                      tax: President.find(params[:president_id]).price.to_i * params[:quantity].to_i * 0.09,
                      total: ((President.find(params[:president_id]).price.to_i * params[:quantity].to_i)) + ((President.find(params[:president_id]).price.to_i * params[:quantity].to_i) * 0.09)
                      )
    order.save
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find(params[:id])
  end

  def create
    carted_products = current_user.current_cart
    carted_products.each do |carted_product|
      subtotal = subtotal + carted_product.president.price + carted_product.quantity
    end

  redirect_to "/orders/#{order.id}"
  end  
end