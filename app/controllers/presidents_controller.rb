class PresidentsController < ApplicationController
  def index
    @presidents = President.all
  end

  def new

  end

  def create
    president = President.new(



                              )
  president.save
  end  


  def show
    @president = President.find(params[:id])
  end

end
