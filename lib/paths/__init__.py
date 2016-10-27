
# The data structure for the grid.
class MVGraph():
    def __init__(self):
        self.edges = {}
        pass

    def neighbors(self, id):
        return self.edges[id]
