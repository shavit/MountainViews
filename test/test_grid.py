import unittest
from lib.paths import MVGraph

class GridTest(unittest.TestCase):
    def testDrawing(self):
        graph = MVGraph()

        self.assertIsNotNone(graph)
        pass

if __name__ == '__main__':
    unittest.main()
    pass
