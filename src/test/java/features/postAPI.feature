Feature: POST API request handling
  Background:
    * url baseUrl
    * def fakerObj =  new faker()
    * def name = fakerObj.name().name()
    * def domain = fakerObj.internet().domainName()
    * print name
    * def mailId = karate.trim(name) +'@' + domain
    * def payload =
    """
    {
        "name" : "#(name)",
        "email" : "#(mailId)",
        "gender" : "male",
        "status" : "active"
    }
    """


  Scenario: Create user with given data
    Given path 'public/v2/users'
    And request payload
    And  header Authorization = "Bearer "+tokenId
    When method post
    Then status 201
    And match response.id == "#present"

