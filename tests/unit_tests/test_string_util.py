from unittest import TestCase
from util.string_util import StringUtil


class TestStringUtil(TestCase):
    def test_lower(self):
        s = "aAADeDdddafedEFDASFDAFDSFA"
        self.assertEqual(s.lower(), StringUtil.lower(s))

    def test_upper(self):
        s = "aAADeDdddafedEFDASFDAFDSFA"
        self.assertEqual(s.upper(), StringUtil.upper(s))

