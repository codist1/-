class CreateMapPosts < ActiveRecord::Migration
  def change
    create_table :map_posts do |t|
        t.string 'name'
        t.string :menu
        t.string :mail        
        
        t.string :password
        
        t.string :zipcode
        t.string :addr
        t.string :addr_remain
        
      t.timestamps null: false
    end
  end
end
