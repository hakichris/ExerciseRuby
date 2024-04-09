class Deletecustomerordercontent < ActiveRecord::Migration[7.1]
  def up
    CustomerOrder.delete_all
  end
end
