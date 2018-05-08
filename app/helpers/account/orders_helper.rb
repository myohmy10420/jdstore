module Account::OrdersHelper
  def render_order_human_state(order)
    case order.aasm_state
    when "order_placed"
      content_tag(:span, "已下單", class: "label label-success")
    when "paid"
      content_tag(:span, "已付款", class: "label label-danger")
    when "shipping"
      content_tag(:span, "處理中", class: "label label-danger")
    when "shipped"
      content_tag(:span, "處理完畢", class: "label label-danger")
    when "order_cancelled"
      content_tag(:span, "訂單取消", class: "label label-default")
    when "good_returned"
      content_tag(:span, "訂單完成", class: "label label-warning")
    else
      content_tag(:span, "Unknown", class: "label label-default")
    end
  end
end
