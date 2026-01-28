class ExpensesPage
  include Capybara::DSL

  def transactions
    all('table tbody tr')
  end

  def total_balance
  normalize_money(find('div.balance-value').text)
end

def credit_available
  normalize_money(all('div.balance-value')[1].text)
end


  def positive_values
    all('.text-success')
  end

  def negative_values
    all('.text-danger')
  end

  private

  def normalize_money(text)
    text.delete('$ ,').to_f
  end
end

