class CreateCustomerOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :customer_orders do |t|
      t.string :name
      t.string :address
      t.integer :amount_ordered
      t.string :phoneNumber

      t.timestamps
    end
  end
end
