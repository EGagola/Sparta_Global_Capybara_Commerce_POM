require 'capybara/dsl'

class CommerceShoppingCartSummaryPage
  include Capybara::DSL

  def click_proceed_to_checkout_confirm_order_summary
    find('.standard-checkout').click
  end

  def click_proceed_to_checkout_address
    find("button[name = 'processAddress']").click
  end

  def click_proceed_to_checkout_shipping
    find("button[name = 'processCarrier']").click
  end

  def agree_to_terms_of_service
    find('#cgv').click
  end

  def click_pay_by_bank_wire
    find("a[title = 'Pay by bank wire']").click
  end

  def click_confirm_order
    find("button[class = 'button btn btn-default button-medium']").click
  end

  def get_result_of_order_message
    find("p[class = 'cheque-indent']").text
  end

  def check_cart_quantity
    find('#summary_products_quantity').text
  end
end
