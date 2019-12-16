Description: Sign Up into trello.com

Scenario: Registration on Trello
Given I am on the main application page
When I click on element located `By.xpath(//a[@href='/login'])`
When I go to the relative URL 'signup'
When I enter `<email>` in field located `By.xpath(//*[@id='email'])`
When I click on element located `By.xpath(//*[@id='signup'])`
When I enter `<password>` in field located `By.xpath(//*[@id='password'])`
When I click on element located `By.xpath(//*[@id='signup-submit'])`
Then the element with the xpath '//div[@class='sc-eHgmQL fdgziR']' exists for '5' seconds
Examples:
|email|password|
|#{generate(Internet.EmailAddress)}|Password01|
|#{generate(Internet.EmailAddress)}|Password02|