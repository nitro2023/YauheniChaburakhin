Scenario: Sing In Registerd User
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
When I go to the relative URL 'https://trello.com/profile'
When I click on element located `By.xpath(//*[@class="_24AWINHReYjNBf"])`
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-profile"])`

Scenario: Visual checks
Meta:
    @layout desktop
Given I am on a page with the URL 'https://trello.com/profile'
When I click on element located `By.xpath(//*[@data-test-id="header-member-menu-button"])`
When I click on element located `By.xpath(//*[@href='/yauhenic/profile'])`
When I establish baseline with `testBaseLineProfile`
When I COMPARE_AGAINST baseline with `testBaseLineProfile`
When I click on element located `By.xpath(//a[contains(@href,'/activity')])`
When I establish baseline with `testBaseLineActivity`
When I COMPARE_AGAINST baseline with `testBaseLineActivity`
When I click on element located `By.xpath(//a[contains(@href,'/cards')])`
When I establish baseline with `testBaseLineCards`
When I COMPARE_AGAINST baseline with `testBaseLineCards`
When I click on element located `By.xpath(//a[contains(@href,'/account')])`
When I establish baseline with `testBaseLineAccount`
When I COMPARE_AGAINST baseline with `testBaseLineAccount`
When I click on element located `By.xpath(//a[contains(@href,'/billing')])`
When I establish baseline with `testBaseLineBilling`
When I COMPARE_AGAINST baseline with `testBaseLineBilling`





