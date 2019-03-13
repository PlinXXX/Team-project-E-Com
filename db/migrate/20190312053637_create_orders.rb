class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
    	t.belongs_to :user, index: true
    	t.belongs_to :cart, index: true
    	t.string :description
    	t.string :stripe_customer_id
    	t.boolean :status, default: false
      t.timestamps
    end
  end
end
