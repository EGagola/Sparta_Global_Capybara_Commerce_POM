require 'capybara/dsl'

class CommerceAccountPage
  include Capybara::DSL

  ACCOUNT_URL = 'http://automationpractice.com/index.php?controller=my-account'

  def click_logo
    find('.logo').click
  end

end
