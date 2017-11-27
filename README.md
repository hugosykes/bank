[![Build Status](https://travis-ci.org/hugosykes/bank.svg?branch=master)](https://travis-ci.org/hugosykes/bank)

# Bank Tech Test
https://github.com/makersacademy/course/blob/master/individual_challenges/bank_tech_test.md

## MO

### Nouns and verbs analysis of the account:

Nouns: balance and statement
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

#### To string

to_string method interpolates values for the time of transaction, the credit/debit (depending on whether it's a deposit or withdrawal) and the balance

It uses a private method for creating the credit/debit string based on whether the instance variable is nil or not

### Nouns and verbs analysis on the statement

Noun: transactions
Verbs: add transactions and display transactions


## To run code

Run `bundle` and open `irb` simply, to run the code.
