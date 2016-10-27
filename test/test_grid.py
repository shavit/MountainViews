import unittest
from lib.paths import MVGraph

class GridTest(unittest.TestCase):
    def testDrawing(self):
        graph = MVGraph()
        graph.edges = {
            '1': ['2'],
            '2': ['1','3','4'],
            '3': ['1'],
            '4': ['5','1'],
            '5': ['2']
        }

        self.assertIsNotNone(graph)
        pass

if __name__ == '__main__':
    unittest.main()
    pass
