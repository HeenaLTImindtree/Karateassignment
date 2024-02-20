Feature:
  Scenario: Delete
    Given url 'https://restful-booker.herokuapp.com/booking'
    And path '321'
    When method delete
    Then status 204
    And Print response
