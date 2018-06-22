class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
  end

  def show
    #The sweet show view should include the sweet's name and have a list of all the vendors that sell this sweet
    @sweet = Sweet.find(params[:id])
    #byebug
  end
end
