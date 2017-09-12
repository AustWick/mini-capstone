class President < ApplicationRecord

  def discout
    if price > 4000
      puts "Discount Item!"
    end
      
    else
      puts "Everyday Value!"
    end  
  end

  def tax
    price = price * 1.09 
  end  

  def self.random
    presidents = President.all
    all_ids = []
    presidents.each do |president|
      all_ids << presidents.id
    end
    all_ids.example  
  end  