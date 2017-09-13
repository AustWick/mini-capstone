class PresidentsController < ApplicationController
  def index
    @presidents = President.all

    sort_attribute = params[:sort]
    sort_desc = params[:dir]
    discount = params[:discount]
    random = params[:random]

    if sort_attribute
      @presidents = @presidents.order(sort_attribute => sort_desc)
    end
  
    if discount
      @presidents = @presidents.where("price <= ?", 4000)
    end
      

    # if sort_edesc
    #   @presidents = @presidents.order(sort_desc)
  end

  def new

  end

  def create
    president = President.new(
                              first_name: params[:first_name],
                              last_name: params[:last_name],
                              price: params[:price],
                              termination: params[:termination],
                              description: params[:description]
                              )
  president.save
  flash[:success] = "President added"
  redirect_to "/presidents/#{president.id}"
  end  


  def show
    @president = President.find(params[:id])
  end

  def edit
    @president = President.find(params[:id])

  end  

  def update
    president = President.find(params[:id])

    president.assign_attributes(
                              first_name: params[:first_name],
                              last_name: params[:last_name],
                              price: params[:price],
                              termination: params[:termination],
                              description: params[:description]
                              )


    president.save
    flash[:success] = "President updated"
    redirect_to "/presidents/#{president.id}"
  end

  def destroy
    president = President.find(params[:id])
    president.delete
    flash[:success] = "President assinated"
    redirect_to "/presidents"
  end


  def random
    @president = President.all.sample
    render "show.html.erb"
  end
  

  # def discout
  #   if price > 4000
  #     puts "Discount Item!"
  #   end
      
  #   else
  #     puts "Everyday Value!"
  #   end  
  # end

  # def tax
  #   price = price * 1.09 
  # end  


end
