class MapController < ApplicationController


  def map_write
  end

  def map_write_action
    a_post = Map_post.new
    a_post.title = params[:name]
    a_post.menu = params[:menu]
    a_post.mail = params[:mail]
    a_post.address = params[:address]
    a_post.password = params[:password]
    a_post.save
    
    redirect_to '/map/map_read'
  end

  def map_list
    
  end

  def map_read
    @map_post = MapPost.all
  end

  def map_update
  end
  
  def map_update_action
    redirect_to '/map/map_read'
  end

  def map_delete
    @one_post = Post.find(params[:post_id])
    @one_post.delete
    redirect_to '/map/map_list'
  end
  
  def map_comment
    reply = Map_comment.new
    reply.content = params[:content]
    reply.post_id = params[:post_id]
    reply.save
    
    redirect_to "/map/map_read/post_id"
  end
end
