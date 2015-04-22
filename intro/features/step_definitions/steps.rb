Given(/^my account has been credited with (#{CAPTURE_CASH_AMOUNT})$/) do |amount|
  my_account.credit(amount)
end

When(/^I withdraw (#{CAPTURE_CASH_AMOUNT})$/) do |amount|
  teller.withdraw_from(my_account, amount)
end

Then(/^(#{CAPTURE_CASH_AMOUNT}) should be dispensed$/) do |amount|
  expect(cash_slot.contents).to eq(amount)
end
