Scenario: 'Profile Menu' validation
Meta:
    @layout desktop
Given I am on the main application page
When I click on element located `By.xpath(//a[@href="/login"])`
When I enter `${registeredUserEmail}` in field located `By.xpath(//*[@id="user"])`
When I enter `${registeredUserPass}` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login"])`
When I click on element located `By.xpath(//*[@id="login-submit"])`
When I enter `${registeredUserPass}` in field located `By.xpath(//*[@id="password"])`
When I click on element located `By.xpath(//*[@id="login-submit"])`
When I go to the relative URL '${autorizedPage}'
When the condition '#{eval("class"=="_24AWINHReYjNBf")}' is true I do
steps
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-button"])`
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-profile"])`
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-button"])`
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-profile"])`
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-button"])`
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-cards"])`
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-button"])`
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-settings"])`

Scenario: 'Search' validation
Meta:
    @layout desktop
Given I am on a page with the URL '${autorizedPage}'
When I find = '1' elements by By.xpath(//*[@data-test-id="header-search-input"]) and for each element do
steps
When I enter `Text` in field located `By.xpath(//*[@data-test-id="header-search-input"])`
When I click on element located `By.xpath(//*[@name="external-link"])`
Then the page has the relative URL 'https://trello.com/search?q=Text'

Scenario: 'Home' button validation
Meta:
    @layout desktop
Given I am on a page with the URL '${autorizedPage}'
When the condition '#{eval("name"=="house")}' is true I do
steps
When I click on element located `By.xpath(//*[@name="house"])`
Then the page with the URL 'https://trello.com/yauhenic/boards' is loaded