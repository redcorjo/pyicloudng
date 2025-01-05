# Test scripts
# Generated using pyarchetype template
# pip install pyarchetype
# git clone https://github.com/redcorjo/pyarchetype.git
import unittest
import logging, os
#import app

level = os.getenv("LOGGER", "INFO")
logging.basicConfig(level=level)
logger = logging.getLogger(__name__)

class Testing(unittest.TestCase):
    def test_my_string(self):
        a = 'stringA'
        b = 'stringA'
        self.assertEqual(a, b)

    def test_my_boolean(self):
        a = True
        b = True
        self.assertEqual(a, b)

def main():
    logger.info("Tests")
    unittest.main()

if __name__ == '__main__':
    main()

        