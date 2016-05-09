class HomeController < ApplicationController
  def index
    
  end
  
  def upload
  end
  
  #upload의 글이 저장되는 곳
  def write
    post=Myfood.new
    post.name=params[:name]
    post.where=params[:where]
    post.content=params[:content]
    post.save
    redirect_to '/'
  end
  
  #맛집 글을 올리면  보여지는 곳
  def all
    @output_text=Myfood.all
  end
  
  
end
