class AddAasmtestToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :aasmtest, :string, default: "order_placed"
  end
end
