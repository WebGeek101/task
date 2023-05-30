Feature: Person API
  Scenario: Create a person
    Given I have a person with the following details
      | name  | age | location  |
      | Pavan | 21  | Bangalore |
    When I create the person
    Then the response status code should be "201"

#  Scenario: Get a person by ID
#    Given there is a person with ID 1
#    When I request the person by ID
#    Then the response should contain the following details
#      | id | name  | age | location  |
#      | 1  | Pavan | 21  | Bangalore |

  Scenario: Retrieve all persons
    Given there are some persons in the system
    When I request all persons
    Then the response should contain all persons

  Scenario: Update a person by ID
    Given there is a person with an ID
    And I have updated the person with the following details
      | id | name    | age | location  |
      | 1  | Pavan M | 21  | Bangalore |
    When I update the person by ID
    Then the response should return the following with status code "200"
      | name    | age | location  |
      | Pavan M | 21  | Bangalore |

  Scenario: Delete a person by ID
    Given there is a person with ID
    When I delete the person by ID
    Then the person should not exist with that ID
