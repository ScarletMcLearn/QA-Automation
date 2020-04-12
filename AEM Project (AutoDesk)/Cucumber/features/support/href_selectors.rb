
module HrefSelectors
  #example of function, to find any href on the page that point to google.com:
  # find(:href, 'google.com')
  Capybara.add_selector(:href) do
    xpath {|href| XPath.descendant[XPath.attr(:href).contains(href)] }
  end
end
