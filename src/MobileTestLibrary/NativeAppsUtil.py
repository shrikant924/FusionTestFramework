from robot.api.deco import keyword, library
from robot.libraries.BuiltIn import BuiltIn
from MobileTestLibrary.ExtendedAppiumLibrary import ExtendedAppiumLibrary


@library
class NativeAppsUtil(ExtendedAppiumLibrary):

    @keyword
    def press_enter_key(self):
        self.appium_library_instance.press_keycode(66)

    @keyword
    def unlock_device(self):
        driver = self._current_application()
        driver.unlock()
