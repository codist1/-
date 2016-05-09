class MapController < ApplicationController
  def map_list
    @map_post = MapPost.all
  end
  def map_write
  end
  def map_write_action
    a_post = MapPost.new
    a_post.name = params[:name]
    a_post.menu = params[:menu]
    a_post.mail = params[:mail]
    a_post.address = params[:address]
    a_post.password = params[:password]
    a_post.save
    
    redirect_to "/map/map_read/#{a_post.id}"
  end
  def map_read
    @map_post = MapPost.find(params[:post_id])
  end
  def map_update
    @map_post = MapPost.find(params[:post_id])
 
  end
  def map_update_action
   map_post = MapPost.find(params[:post_id])
    map_post.name = params[:name]
    map_post.menu = params[:menu]
    map_post.mail = params[:mail]
    map_post.address = params[:address]
    map_post.password = params[:password]
    map_post.save
    
    redirect_to "/map/map_read/#{map_post.id}"
  end
  def map_delete
    @one_post = MapPost.find(params[:post_id])
    @one_post.delete
    redirect_to '/map/map_list'
  end
  
  
  def map_comment
    reply = MapComment.new
    reply.content = params[:content]
    reply.post_id = params[:post_id]
    reply.save
    
    redirect_to "/map/map_read/post_id"
  end
end
