class AddMenuToProduct < ActiveRecord::Migration[4.2]
  def change
    # change_table :products do |t|
    #   t.integer :menu_id
    # end
  end

  add_reference :products, :menu, index: true
end
