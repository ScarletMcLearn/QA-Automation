When (/^user navigates to "([^"]*)"$/) do |url|
  visit(url)
  sleep 2
end

And(/^user clicks on X icon$/) do
    find(:xpath,$PATH['close_icon']).click
    sleep 10
end

Then(/^create account screen is displayed$/) do
    sleep 10
    within_frame(0) do
        find(:xpath,$PATH['header']).text.should match('Sign in')
    end
end
