from Selenium2Library import Selenium2Library

from WebApplicationTestLibrary.SeleniumUtils import SeleniumUtils


class WebApplicationTestLibrary(Selenium2Library, SeleniumUtils):
    def __init__(self):
        super().__init__()
        super(Selenium2Library, self).__init__()
        super(SeleniumUtils, self).__init__()
