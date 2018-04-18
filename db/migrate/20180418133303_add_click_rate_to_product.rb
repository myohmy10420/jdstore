class AddClickRateToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :click_rate, :integer, default: 0
  end
end
