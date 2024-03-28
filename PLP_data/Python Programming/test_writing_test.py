#test-driven development(TDD) = oftware development practice where developers write tests before writing the actual code.
#add tests -> see tests fail -> write code -> run test -> refactor -> add tests
#unitrest, pytest or nose
#test discovery, test fixture and test reporting
 
#unittest
import unittest
class Tdd_python(unittest.TestCase):
    def test_banking_result(self):
        #bank = Banking()
        bank = None
        final_bal = bank.credit(1000)
        self.assertEqual(1000, final_bal)

# pytest and unittest = to write and run tests for your code to make sure it works as expected.

import unittest
class BankAccount:
    def __init__(self, id):
        self.id = id
        self.balance = 0

    def withdraw(self, amount):
        if self.balance >= amount:
            self.balance -= amount
            return True
        return False
    
    def deposit(self, amount):
        self.balance += amount
        return True
#We can’t withdraw more money than the deposit availability, so let’s test that this scenario is handled correctly by our source code.
class TestBankOperations(unittest.TestCase):
    def test_deposit(self):
        a = BankAccount(1)
        a.deposit(1000)
        outcome = a.withdraw(200)
        self.assertFalse(outcome)

#ython -m unittest test_writing_test.py = running the test in the terminal

#pytest
class BankAccount:
    def __init__(self, id):
        self.id = id
        self.balance = 0
    
    def withdraw(self, amount):
        if self.balance >= amount:
            self.balance -= amount
            return True
        return False
    
    def deposit(self, amount):
        self.balance += amount
        return True
    
    def test_insuffucient_deposit():
        a = BankAccount(1)
        a.deposit(100)
        outcome = a.withdraw(200)
        assert outcome == False

#negative deposit test
def test_negative_deposit():
    a = BankAccount(1)
    outcome = a.deposit(-100)
    assert outcome == False