import unittest
from lib.paths import MVGraph
from lib.paths import MVPath

class PathTest(unittest.TestCase):

    # The number of nodes should be equal width x height
    def testBreadthFirstSearch(self):
        graph = MVGraph()
        path = MVPath()
        w = 20
        h = 20
        grid = graph.simpleGrid(w,h)
        start_node = [10,10]

        route = path.breadthFirstSearch(grid, start_node)
        self.assertTrue(len(route), w*h)

        pass

    # The number of nodes should be equal width x height
    def testBreadthFirstSearchWithTrace(self):
        graph = MVGraph()
        path = MVPath()
        w = 20
        h = 20
        grid = graph.simpleGrid(w,h)
        start_node = [10,10]

        route = path.breadthFirstSearchWithTrace(grid, start_node)
        # came from
        self.assertTrue(len(route[0]), w*h)
        # visited
        self.assertTrue(len(route[1]), w*h)

        pass

    pass

if __name__ == '__main__':
    unittest.main()
    pass
