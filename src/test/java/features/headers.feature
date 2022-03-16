Feature: Get Api headers feature
  Scenario: pass the user request with header method #1
  Given header User-Agent = "Mozilla 5.0"
  And header Accept = "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8"
    And header Accept-Language = "en,en-US;q=0.7,pl;q=0.3"
    And header Accept-Encoding = "gzip, deflate, br"
    And header Connection = "keep-alive"
    Given url baseUrl+'/public/v1/users'
    When method GET
    Then status 200

  Scenario: pass the user request with header method #2
    * def request_headers = {  User-Agent: "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0",   Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",  Accept-Language: "en,en-US;q=0.7,pl;q=0.3",   Accept-Encoding: "gzip, deflate, br",   Connection: "keep-alive"  }
    Given headers request_headers
    And url baseUrl+'/public/v1/users'
    When method GET
    Then status 200

  Scenario: pass the user request with header method #3
    * configure headers = {  User-Agent: "Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0",   Accept: "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8",  Accept-Language: "en,en-US;q=0.7,pl;q=0.3",   Accept-Encoding: "gzip, deflate, br",   Connection: "keep-alive"  }
    Given url baseUrl+'/public/v1/users'
    When method GET
    Then status 200