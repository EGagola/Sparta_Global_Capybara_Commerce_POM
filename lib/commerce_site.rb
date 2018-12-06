require_relative 'pages/commerce_homepage'
require_relative 'pages/commerce_sign_in_page'
require_relative 'pages/commerce_account_page'
require_relative 'pages/commerce_product_list_page'
require_relative 'pages/commerce_product_view_page'
require_relative 'pages/commerce_shopping_cart_summary_page'

class CommerceSite

  def commerce_homepage
    CommerceHomepage.new
  end

  def commerce_sign_in_page
    CommerceSignInPage.new
  end

  def commerce_account_page
    CommerceAccountPage.new
  end

  def commerce_product_list_page
    CommerceProductListPage.new
  end

  def commerce_product_view_page
    CommerceProductViewPage.new
  end

  def commerce_shopping_cart_summary_page
    CommerceShoppingCartSummaryPage.new
  end
end
