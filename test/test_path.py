import unittest
from lib.paths import MVGraph
from lib.paths import MVPath

class PathTest(unittest.TestCase):

    def testBreadthFirstSearch(self):
        graph = MVGraph()
        path = MVPath()
        grid = graph.simpleGrid(20,20)
        start_node = [10,10]

        route = path.breadthFirstSearch(grid, start_node)
        print(route)

        pass

    pass

if __name__ == '__main__':
    unittest.main()
    pass
