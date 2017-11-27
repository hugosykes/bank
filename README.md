# Bank Tech Test
https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md

## MO

### Nouns and verbs analysis of the account:

Nouns: balance and log
Verbs: deposit, withdraw and display

#### Deposit

Deposit changes the balance by the amount passed as an argument.

It raises an error if the amount is negative.

#### Withdraw

Withdraw deducts from the balance the amount passed as an argument.

It also raises an error if the amount is negative.

### Nouns and verbs analysis of the transaction:

Nouns: credit, debit and balance (Time to be evaluated at the point of initialization
Verb: to_string - want each transaction object to take care of turning itself into a string
