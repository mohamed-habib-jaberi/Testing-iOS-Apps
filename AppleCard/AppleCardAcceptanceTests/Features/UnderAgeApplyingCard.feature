
feature: Applyin for credit card while under 18

Scenario: As a user who is less than 18 years old, when I apply for a credit card then it should be denied

Given the following user information
|  name       |  ssn          |  dob         |
|  John Doe  |  123-564-985  |  02/10/2020  |
When I press the apply button
Then I should get a rejection message


