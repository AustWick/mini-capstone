class President < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :orders

  has_many :carted_products
  has_many :users, through :carted_products
  has_many :orders, through :carted_products

  validates :name, :presence true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: true
  validates :description, length: { maximum: 500, minimum: 200 }
  
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