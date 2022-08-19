Feature: When called feature performs method Then responseTime is no longer in scope requiring user to store as named variable

  Scenario: Call feature which performs method using shared scope

    * call read('classpath:google-get.feature')

    #responseTimeVar still in scope
    * print 'responseTimeeVar: ' + responseTimeVar
    * match responseTimeVar == '#number'

    #responseTime no longer in scope
    * print 'responseTime: ' + responseTime
    * match responseTime == '#number'
    * match responseTime == responseTimeVar

  Scenario: call feature file which performs GET using named scope

    * def resp = call read('classpath:google-get.feature')
     #responseTimeVar still in scope
    * print 'resp.responseTimeeVar: ' + resp.responseTimeVar
    * match resp.responseTimeVar == '#number'

    #responseTime no longer in scope
    * print 'resp.responseTime: ' + resp.responseTime
    * match resp.responseTime == '#number'
    * match resp.responseTime == resp.responseTimeVar