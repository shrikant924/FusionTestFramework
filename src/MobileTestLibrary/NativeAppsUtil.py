from AppiumLibrary import AppiumLibrary
from robot.api.deco import keyword, library
from robot.libraries.BuiltIn import BuiltIn


@library
class NativeAppsUtil(AppiumLibrary):

    def __init__(self):
        super().__init__()
        super(AppiumLibrary, self).__init__()

    @keyword
    def press_enter_key(self):
        self.appium_library_instance.press_keycode(66)

    @keyword
    def unlock_device(self):
        driver = self._current_application()
        driver.unlock()
