Then(/^the balance of my account should be (#{CAPTURE_CASH_AMOUNT})$/) do |amount|
  eventually { expect(my_account.reload.balance).to eq(amount) }
  "Expected the balance to be #{amount} but it was #{my_account.balance}"
end
