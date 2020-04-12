Then(/^the term price text appears as "([^"]*)"$/) do |term|
  expect(find(:xpath, $PATH['term_3-YEAR']).text).to include(term)
end

Then(/^the monthly price text appears as "([^"]*)"$/) do |monthly|
  expect(find(:xpath, $PATH['term_3-YEAR_monthly']).text).to include(monthly)
end

And(/^Subhead text for term theme appears$/) do
  should have_selector(:xpath, $PATH['term_3-YEAR_subheadtext'])
end

And(/^Subhead text for monthly theme appears$/) do
  should have_selector(:xpath, $PATH['term_3-YEAR_subheadtext_monthly'])
end

And(/^Best Value flag appears$/) do
  should have_selector(:xpath, $PATH['best_value_flag'])
end

And(/^Best Value flag does not appear$/) do
  expect(page).not_to have_selector(:xpath, $PATH['best_value_flag'])
end

And(/^Subhead text for monthly theme does not appear$/) do
  expect(page).not_to have_selector(:xpath, $PATH['term_3-YEAR_subheadtext_monthly'])
end

And(/^Autorenewal text apperas as "([^"]*)"$/) do |renewal|
  expect(find(:xpath, $PATH['term_3-YEAR_autorenewal']).text).to eq(renewal)
end

And(/^Autorenewal text does not appear$/) do
  expect(page).not_to have_selector(:xpath, $PATH['term_3-YEAR_autorenewal'])
end

Then(/^Best Value tag should only be on the lowest price$/) do
  #get price value with best value tag
  begin
    best_price_raw=$SubscribePage.buyContainer.best_value_flag_price_type1.text
  rescue
    best_price_raw=$SubscribePage.buyContainer.best_value_flag_price_type2.text
  end
  best_price_temp = best_price_raw.scan(/(\d+[.,]\d+)/).flatten.first
  best_price_temp.gsub!(/\,/,"")
  best_price = best_price_temp.tr(',', '.').to_f
  #fetch minimum price 
  price_list_raw =[]
  price_list=[]
  $SubscribePage.buyContainer.monthly_price_type1.each { |price| price_list_raw.push(price.text) }
  $SubscribePage.buyContainer.monthly_price_type2.each { |price| price_list_raw.push(price.text) }
  price_list_raw.each do |str|
    # use regex to get price
    next unless float_match = str.scan(/(\d+[.,]\d+)/).flatten.first
    # convert price
    float_match.gsub!(/\,/,"")
    float = float_match.tr(',', '.').to_f
    price_list.push(float) 
  end
  #price value with tag should eql to min
  expect(best_price).to eq(price_list.min)
  

end
