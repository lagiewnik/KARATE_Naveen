Feature: GET API feature with query
  Scenario: get all active female users
    Given header Content-type = 'text/xml;charset=ISO=8859-2'
    Given url baseUrl + 'public/v2/users'
    And params {status:'active',gender:'female'}
    When method GET
    Then status 200
    * print response
    And match each response contains {"gender":"female", "status":"active"}

  