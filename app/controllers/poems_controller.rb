class PoemsController < ApplicationController
  def show 
    poem = Poem.find(params[:id])
    render json: poem 
  end
  def index 
    render json: Poem.first
  end
end
