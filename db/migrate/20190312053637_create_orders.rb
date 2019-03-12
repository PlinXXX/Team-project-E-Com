class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
    	t.belongs_to :user, index: true
    	t.belongs_to :item, index: true
    	t.belongs_to :cart, index: true
    	t.string :status
      	t.timestamps
    end
  end
end
