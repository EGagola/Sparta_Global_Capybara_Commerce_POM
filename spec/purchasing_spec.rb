require 'spec_helper'

describe "Testing the method for purchasing products" do

  before(:all) do
    @commerce_site = CommerceSite.new
    @commerce_site.commerce_homepage.visit_homepage
    @commerce_site.commerce_homepage.click_sign_in_link
    @commerce_site.commerce_sign_in_page.input_email_field
    @commerce_site.commerce_sign_in_page.input_password_field
    @commerce_site.commerce_sign_in_page.click_log_in_link
  end

  context "testing order" do

    it "should order a product" do
      @commerce_site.commerce_homepage.visit_homepage
      @commerce_site.commerce_homepage.input_search_field('blouse')
      @commerce_site.commerce_homepage.click_search_bar_button
      @commerce_site.commerce_product_list_page.click_product('Blouse')
      @commerce_site.commerce_product_view_page.click_add_to_cart
      @commerce_site.commerce_product_view_page.click_go_to_checkout
      @commerce_site.commerce_shopping_cart_summary_page.click_proceed_to_checkout_confirm_order_summary
      @commerce_site.commerce_shopping_cart_summary_page.click_proceed_to_checkout_address
      @commerce_site.commerce_shopping_cart_summary_page.agree_to_terms_of_service
      @commerce_site.commerce_shopping_cart_summary_page.click_proceed_to_checkout_shipping
      @commerce_site.commerce_shopping_cart_summary_page.click_pay_by_bank_wire
      @commerce_site.commerce_shopping_cart_summary_page.click_confirm_order
      sleep 2
      expect(@commerce_site.commerce_shopping_cart_summary_page.get_result_of_order_message).to eq "Your order on My Store is complete."
    end

    it "should specify that your cart has one item once product has been added to order" do
      @commerce_site.commerce_homepage.visit_homepage
      @commerce_site.commerce_homepage.input_search_field('blouse')
      @commerce_site.commerce_homepage.click_search_bar_button
      @commerce_site.commerce_product_list_page.click_product('Blouse')
      @commerce_site.commerce_product_view_page.click_add_to_cart
      @commerce_site.commerce_product_view_page.click_go_to_checkout
      expect(@commerce_site.commerce_shopping_cart_summary_page.check_cart_quantity).to eq "1 Product"
    end
  end
end
