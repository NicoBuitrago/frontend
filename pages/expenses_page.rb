class ExpensesPage
  include Capybara::DSL

  def transactions
    all('table tbody tr')
  end

  def total_balance
    money_from('#totalBalance .balance-value')
  end

  def credit_available
    money_from('#creditAvailable .balance-value')
  end

  def positive_values
    all('.text-success')
  end

  def negative_values
    all('.text-danger')
  end

  private

  def money_from(css)
    text = find(css, visible: true).text
    text.delete('$ ,').to_f
  end
end

