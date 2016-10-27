import unittest
from kivy.app import App
from kivy.uix.widget import Widget

class GridView(Widget):
    def __init__(self, **kwargs):
        super(GridView, self).__init__(**kwargs)

        with self.canvas:
            pass

        with self.canvas.before:
            pass

        with self.canvas.after:
            pass

class GridWindow(App):
    def build(self):
        return GridView()

class GridTest(unittest.TestCase):
    def testDrawing(self):
        view = GridView()

        self.assertIsNotNone(view)
        pass

if __name__ == '__main__':
    unittest.main()
    pass
