

feature : Calculating Credit Card APR

Scenario: As a user when I apply for credit card then I should get APR based on my credit score

Given the following userd aplied for the credit card

| name | ssn  |  dob  |
john Doe | 345-45-2345 | 02/09/1973
When the user press the apply button
then they should see the following APR rates
|  ssn         |  APR     |
| 345-45-2345 |   0.06%  |
