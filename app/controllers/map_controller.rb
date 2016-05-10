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
    a_post.zipcode = params[:zipcode]
    a_post.addr = params[:addr]
    a_post.addr_remain = params[:addr_remain]
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
    reply.comment = params[:comment]
    reply.post_id = params[:post_id]
    reply.password = params[:password]
    reply.save
    
    redirect_to "/map/map_read/#{params[:post_id]}"
  end
end
