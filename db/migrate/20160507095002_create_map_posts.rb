class CreateMapPosts < ActiveRecord::Migration
  def change
    create_table :map_posts do |t|
        t.string 'name'
        t.string :menu
        t.mail :mail        
        t.string :address
        t.string :password
        
      t.timestamps null: false
    end
  end
end
