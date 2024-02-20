Feature: Post API



  Scenario: POST scenario

    Given url 'https://restful-booker.herokuapp.com/booking'
    And request {"firstname" : "James","lastname" : "Brown","totalprice" : 111,"depositpaid" : true,"bookingdates" : {"checkin" : "2018-01-01","checkout" : "2019-01-01"},"additionalneeds" : "Breakfast"}
    And header Cookie = 'a16dac3a42ab702'
    When method post
    Then status 200
    And print response