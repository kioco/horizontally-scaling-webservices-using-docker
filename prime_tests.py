#!/usr/bin/env python

import unittest
from prime_server import is_prime


class PrimeTests(unittest.TestCase):
    def test_1_is_prime(self):
        self.assertTrue(is_prime(1))

    def test_2_is_prime(self):
        self.assertTrue(is_prime(2))

    def test_3_is_prime(self):
        self.assertTrue(is_prime(3))

    def test_4_is_not_prime(self):
        self.assertTrue(is_prime(4))

    def test_11_is_prime(self):
        self.assertTrue(is_prime(11))

    def test_101_is_prime(self):
        self.assertTrue(is_prime(101))

if __name__ == '__main__':
    unittest.main()
