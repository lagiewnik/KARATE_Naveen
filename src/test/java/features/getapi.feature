Feature: GET API feature
  Scenario: get user details
    Given url baseUrl + 'public/v2/users'
    And path '33'
    When method GET
    Then status 200
    * match response.name == "Madhuri Gupta"
    * match response.id == 33
    * match response.email == "madhuri_gupta@wuckert.io"

  Scenario: get user details - user not found
    Given url baseUrl + 'public/v2/users'
    And path '1'
    When method GET
    Then status 404