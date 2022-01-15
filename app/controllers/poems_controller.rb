class PoemsController < ApplicationController
  def show 
    poem = Poem.find(params[:id])
    render json: poem 
  end
end
