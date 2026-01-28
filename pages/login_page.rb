class LoginPage
  include Capybara::DSL

  def visit_page
    visit '/hackathonV2.html'
  end

  def login(user, password)
    fill_in 'username', with: user
    fill_in 'password', with: password
    click_button 'Log In'
  end
end
