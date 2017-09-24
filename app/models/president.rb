class President < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :orders

  has_many :carted_products
  has_many :users, through :carted_products
  has_many :orders, through :carted_products
  
  def discout
    if price > 4000
      puts "Discount Item!"
    end
      
    else
      puts "Everyday Value!"
    end  
  end

  def tax
    return price * 0.09 
  end  

  def total
    return tax * price
  end
  def self.random
    presidents = President.all
    all_ids = []
    presidents.each do |president|
      all_ids << presidents.id
    end
    all_ids.example  
  end  