class PoemsController < ApplicationController
  
  def show
    poem = Poem.find(params[:id])
    render json: poem 
    # poem = Poem.find(params[:id])
    # render html: "<div>#{poem.id}</div><div>#{poem.linecount}</div><div>#{poem.author}</div><div>#{poem.title}</div><div>#{poem.lines.join(" ")}</div>".html_safe
  end
    # poem = Poem.find(params[:id])
    # render json: poem 
  
  def index 
    render json: Poem.all
  end
end
