require_relative '../../pages/login_page'
require_relative '../../pages/expenses_page'

Given('el usuario está en la página de login') do
  @login = LoginPage.new
  @login.visit_page
end

When('inicia sesión con credenciales válidas') do
  @login.login('testuser', 'testpassword')
end

Then('es redirigido a la página de gastos') do
  expect(page.current_url).to include('hackathonAppV2.html')
  @expenses = ExpensesPage.new
end

Then('existen 6 transacciones') do
  expect(@expenses.transactions.count).to eq(6)
end

Then('el total balance es 350') do
  expect(@expenses.total_balance).to eq(350)
end

Then('el crédito disponible es 17800') do
  expect(@expenses.credit_available).to eq(17800)
end

Then('los valores positivos son verdes') do
  expect(@expenses.positive_values).not_to be_empty
end

Then('los valores negativos son rojos') do
  expect(@expenses.negative_values).not_to be_empty
end

