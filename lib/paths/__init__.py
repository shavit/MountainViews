
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
    def simpleNeighbors(self, grid, node):
        directions = [[0,1],[1,0],[0,-1],[-1,0]]
        res = list()

        for item in directions:
            # Create a point relative to the node position
            neighbor = [node[0] + item[0], node[1] + item[1]]
            # Check if the point is in range
            if neighbor in grid:
                res.append(neighbor)

        return res

    def neighbors(self, id):
        return self.edges[id]
