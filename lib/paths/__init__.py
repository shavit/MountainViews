
# The data structure for the grid.
class MVGraph():
    def __init__(self):
        self.edges = {}
        pass

    # Create a simple square grid
    def simpleGrid(self, w, h):
        nodes = list()

        for y in range(h):
            for x in range(w):
                nodes.append([x, y])

        return nodes

    #
    #        [0,1]
    #   [-1,0] * [1,0]
    #        [0,-1]
    #
    def simpleNeighbors(self, node):
        directions = list([0,1],[1,0],[0,-1],[-1,0])
        res = list()
        for item in directions:
            res.append(node[0] + item[0], node[1] + item[1])

    def neighbors(self, id):
        return self.edges[id]
