

class SampleLibrary:
    from robot.api.deco import keyword
    ROBOT_LIBRARY_SCOPE = 'TEST SUITE'

    def __init__(self):
        self._counter = 0
    @keyword('Start Count')
    def start_count(self):
        self._counter += 1
        return self._counter
    @keyword('Clear Count')
    def clear_count(self):
        self._counter = 0
        return self._counter