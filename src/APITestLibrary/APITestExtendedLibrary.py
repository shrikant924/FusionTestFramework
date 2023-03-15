from robot.api.deco import library, keyword
from RequestsLibrary import RequestsLibrary 


@library
class APITestExtendedLibrary (RequestsLibrary):

    def __init__(self):
        super(RequestsLibrary, self).__init__()

    ROBOT_LIBRARY_SCOPE = 'global'