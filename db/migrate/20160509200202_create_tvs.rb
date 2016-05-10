class CreateTvs < ActiveRecord::Migration
  def change
    create_table :tvs do |t|

   t.integer :tv_id
      t.integer :score
      t.text :comment

      t.timestamps null: false
    end
  end
end
