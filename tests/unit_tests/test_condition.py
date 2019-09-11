from unittest import TestCase
from control.condition import Condition


class TestCondition(TestCase):
    def test_the_ifelse_true(self):
        self.assertTrue(Condition().the_ifelse(True))

    def test_the_while_false(self):
        self.assertFalse(Condition().the_while(False))

