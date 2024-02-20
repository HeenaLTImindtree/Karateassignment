Feature: Booking ID



  Scenario: get booking ID

    Given url 'https://restful-booker.herokuapp.com/booking/326'

    And header Content-type = "application/json"

    When method GET

    Then status 200

    And print response

    And print responseStatus

    And print responseTime

    And print responseCookies