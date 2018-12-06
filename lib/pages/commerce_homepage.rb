require 'capybara/dsl'

class CommerceHomepage
  include Capybara::DSL

  HOMEPAGE = 'http://automationpractice.com/index.php'
  SIGN_IN_LINK_ID = '.login'

  def visit_homepage
    visit(HOMEPAGE)
  end

  def sign_in_link
    find(SIGN_IN_LINK_ID)
  end

  def click_sign_in_link
    find(SIGN_IN_LINK_ID).click
  end

  def input_search_field product_name
    find('#search_query_top').native.send_keys(product_name)
  end

  def click_search_bar_button
    find('.button-search').click
  end
end
