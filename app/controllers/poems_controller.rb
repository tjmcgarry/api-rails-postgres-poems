class PoemsController < ApplicationController
  
  def show
    poem = Poem.find(params[:id])
    render html: "<div>#{poem.lines.join(" ")}</div>".html_safe
  end
    # poem = Poem.find(params[:id])
    # render json: poem 
  
  def index 
    render json: Poem.first
  end
end
