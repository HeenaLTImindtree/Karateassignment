Feature: GET API feature
  Scenario: get booking details

    Given url 'https://restful-booker.herokuapp.com/booking'
    And header Content-type = "application/json"
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseCookies



  Scenario: get booking ID

    Given url 'https://restful-booker.herokuapp.com/booking'
    And path '735'
    And header Content-type = "application/json"
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseCookies

