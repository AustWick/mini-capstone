class PresidentsController < ApplicationController
  def index
    @presidents = President.all
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
  end

  def destroy
    president = President.find(params[:id])
    president.delete
  end  
end
