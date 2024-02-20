Feature: Authentication



  Scenario: Create Authentication

    Given url 'https://restful-booker.herokuapp.com/auth'

    And header Content-type = "application/json"

    And request {"username" : "admin","password" : "password123"}

    When method POST

    And print response