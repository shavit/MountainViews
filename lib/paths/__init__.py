
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

    def neighbors(self, id):
        return self.edges[id]
