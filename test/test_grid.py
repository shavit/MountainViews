import unittest
from lib.paths import MVGraph

class GridTest(unittest.TestCase):

    # The number of nodes should be equal width x height
    def testSimpleGrid(self):
        graph = MVGraph()
        w = 2
        h = 2
        nodes = graph.simpleGrid(w, h)
        self.assertIs(len(nodes), w*h)
        pass

    def testSimpleNeighbors(self):
        graph = MVGraph()
        grid = graph.simpleGrid(10, 10)

        # Point in the center should have 4 neighbors
        self.assertIs(len(graph.simpleNeighbors(grid, [4,4])), 4)
        # Point in the corner should have 2 neighbors
        self.assertIs(len(graph.simpleNeighbors(grid, [0,0])), 2)

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
