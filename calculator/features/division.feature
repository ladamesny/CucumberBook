Feature: Division

  Scenario Outline: Divide two numbers
    Given the input "<input>"
    When the calculator is run
    Then the output should be "<output>"

    Examples:
    | input | output |
    | 99/3  | 33     |
    | 150/5 | 30     |
