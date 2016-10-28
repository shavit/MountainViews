
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

# Create paths
class MVPath:

    # Track the visited nodes
    # Returns a dictionary with the visited nodes
    def breadthFirstSearch(self, grid, start_node):
        graph = MVGraph()
        frontier = list()
        frontier.append(start_node)
        visited = dict()
        visited[str(start_node)] = True

        while len(frontier) > 0:
            current_point = frontier.pop()
            for next_point in graph.simpleNeighbors(grid, current_point):
                if str(next_point) not in visited:
                    frontier.append(next_point)
                    visited[str(next_point)] = True

        return visited

    # Track where the path came from
    # Returns a list with 2 objects: came_from, visited
    def breadthFirstSearchWithTrace(self, grid, start_node):
        graph = MVGraph()
        frontier = list()
        frontier.append(start_node)
        visited = dict()
        visited[str(start_node)] = True
        came_from = dict()
        came_from[str(start_node)] = None

        while len(frontier) > 0:
            current_point = frontier.pop()
            for next_point in graph.simpleNeighbors(grid, current_point):
                if str(next_point) not in visited:
                    frontier.append(next_point)
                    visited[str(next_point)] = True
                    came_from[str(next_point)] = current_point

        return [came_from, visited]

    pass
