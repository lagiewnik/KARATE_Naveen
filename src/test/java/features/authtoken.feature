Feature: Get Api headers with Authorization token
  Scenario: GET method with Authorization token
    Given header User-Agent = "Mozilla 5.0"
    And header Accept = "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8"
    And header Accept-Language = "en,en-US;q=0.7,pl;q=0.3"
    And header Accept-Encoding = "gzip, deflate, br"
    And header Connection = "keep-alive"
    And header Authorization = "Bearer122 "+tokenId +"fail123"
    Given url baseUrl+'/public/v1/users'
    When method GET
    Then status 200
