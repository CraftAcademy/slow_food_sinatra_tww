class CreateProducts < ActiveRecord::Migration[4.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :price
      t.string :catagory
    end  
  end
end
