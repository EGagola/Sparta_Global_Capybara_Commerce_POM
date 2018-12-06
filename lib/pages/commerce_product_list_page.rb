require 'capybara/dsl'

class CommerceProductListPage
  include Capybara::DSL

  def click_product product_name
    find("img[title = '#{product_name}']").click
  end

end
