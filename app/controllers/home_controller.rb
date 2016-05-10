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
    post.img = params[:img]
    post.save
    redirect_to '/'
  end
  
  #맛집 글을 올리면  보여지는 곳
  def all
    @output_text=Myfood.all
  end
  
  def detail
    @stars = Myfood.find(params[:id])
  end
  
  def twin
       Tv.create(tv_id: params[:tv_id].to_i, comment: params[:msg], score: params[:rating].to_i)
       redirect_to :back
  end
  
  
end
