class CreateMyfoods < ActiveRecord::Migration
  def change
    create_table :myfoods do |t|
    
      t.string :name
      t.string :where
      t.string :img
      t.text :content
      t.timestamps null: false
    end
  end
end
