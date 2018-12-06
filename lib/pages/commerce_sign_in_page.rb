require 'capybara/dsl'

class CommerceSignInPage
  include Capybara::DSL

  SIGN_IN_PAGE = 'http://automationpractice.com/index.php?controller=authentication&back=my-account'

  def visit_page
    visit(SIGN_IN_PAGE)
  end

  def click_log_in_link
    find('#SubmitLogin').click
  end

  def input_email_field
    find('#email').native.send_keys('e@hotmail.com')
  end

  def input_password_field
    find('#passwd').native.send_keys('hello')
  end
end
