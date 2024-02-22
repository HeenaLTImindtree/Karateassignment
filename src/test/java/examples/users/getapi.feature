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


    Feature: Post API



  Scenario: POST scenario

    Given url 'https://restful-booker.herokuapp.com/booking'
    And request {"firstname" : "James","lastname" : "Brown","totalprice" : 111,"depositpaid" : true,"bookingdates" : {"checkin" : "2018-01-01","checkout" : "2019-01-01"},"additionalneeds" : "Breakfast"}
    And header Content-type = "application/json"
    When method post
    Then status 200
    And print response

    Feature: PUT API
  Scenario: PUT scenario Given url 'https://restful-booker.herokuapp.com/booking'
    And path '321'
    And request {"firstname" : "James","lastname" : "Brown","totalprice" : 111,"depositpaid" : true,"bookingdates" : {"checkin" : "2018-01-01","checkout" : "2019-01-01"},"additionalneeds" : "Breakfast"}
    And header Cookie = 'a16dac3a42ab702'
    When method PUT
    Then status 200
    And print response

    Feature:Delete API
  Scenario: Delete
    Given url 'https://restful-booker.herokuapp.com/booking'
    And path '321'
    When method delete
    Then status 204
    And Print response


    

