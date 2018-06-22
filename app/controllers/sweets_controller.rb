class SweetsController < ApplicationController
  def index
    @sweets = Sweet.all
    render :index
  end

  def show
    @sweet = Sweet.find(params[:id])
    render :show
  end
end
