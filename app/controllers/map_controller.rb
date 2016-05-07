class MapController < ApplicationController
  def map_list
  end

  def map_read
  end

  def map_write
  end

  def map_update
  end
  
  def map_update_action
    redirect_to '/map/read'
  end

  def map_delete
    redirect_to '/map/list'
  end
end
