class User < ApplicationRecord
  has_secure_password
  has_many :carted_products
  has_many :orders, through :carted_products

  def current_cart
    current_user.carted_products.where(status: "carted")
  end  
end
