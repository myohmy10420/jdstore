module Account::OrdersHelper
  def render_order_human_state(order)
    case order.aasm_state
    when "order_placed"
      content_tag(:span, "已下單", class: "label label-default")
    when "paid"
      "已付款"
    when "shipping"
      "處理中"
    when "shipped"
      "處理完畢"
    when "order_cancelled"
      "訂單取消"
    when "good_returned"
      "訂單完成"
    else
      "Unknown"
    end
  end
end
