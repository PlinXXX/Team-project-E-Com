class CreateConfirmations < ActiveRecord::Migration[5.2]
  def change
    create_table :confirmations do |t|
    	t.string :email
    	t.string :confirmation_code

      t.timestamps
    end
  end
end
