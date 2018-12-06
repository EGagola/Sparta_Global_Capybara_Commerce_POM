require 'capybara/dsl'

class CommerceProductViewPage
  include Capybara::DSL

  def click_add_to_cart
    find("button[name = 'Submit']").click
  end

  def click_go_to_checkout
    find("a[title = 'Proceed to checkout']").click
  end

end
