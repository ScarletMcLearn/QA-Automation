## from: https://stackoverflow.com/questions/17623075/auto-scroll-a-button-into-view-with-capybara-and-selenium

module JavascriptDriver
  # other code that prepares capybara to work with selenium

  def scroll_to(element)
    script = <<-JS
      arguments[0].scrollIntoView(true);
    JS

    Capybara.current_session.driver.browser.execute_script(script, element.native)
  end
end

# HOW TO USE:
# Add a step definition:
# scroll_to(page.find("button.some-class", visible: false))
