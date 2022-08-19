
Feature: call google

  Scenario: call google
    Given url 'https://www.google.com'
    When method GET
    Then status 200
    And assert responseTime < 1000

    #works inside feature
    * print 'responseTime: ' + responseTime
    * match responseTime == '#number'
    * match responseTime == '#number'

    * def responseTimeVar = responseTime




