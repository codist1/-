class CreateMapComments < ActiveRecord::Migration
  def change
    create_table :map_comments do |t|
      
        t.string :comment
        t.string :password
        
        t.integer :post_id
        

      t.timestamps null: false
    end
  end
end
