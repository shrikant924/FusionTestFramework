import time

from AppiumLibrary import *
from appium.webdriver.common.appiumby import AppiumBy
from appium.webdriver.common.touch_action import TouchAction
from robot.api.deco import library, keyword

@library
class ExtendedAppiumLibrary(AppiumLibrary):

    @keyword
    def get_text_from_index(self, txt, startIndex, lastIndex):
        slicedText = txt[int(startIndex):int(lastIndex)]
        return slicedText

    """Scrolling action stuffs"""

    @keyword
    def scroll_to_element_By_Exact_Text(self, element):

        driver = self._current_application()
        try:
            driver.find_element(AppiumBy.ANDROID_UIAUTOMATOR,
                                "new UiScrollable(new UiSelector().scrollable(true).instance("
                                "0)).scrollIntoView(""new UiSelector().text(\"" + element + "\").instance(0))")
        except:
            raise TypeError("Failed to scroll...")

        return self

    @keyword
    def scroll_to_element_By_Exact_Text_in_longView(self, element, MaxSwapCount):
        """ element : give exact text of elements
            MaxSwapCount : Input how many times you have to swap to find element"""

        driver = self._current_application()
        try:
            driver.find_element(AppiumBy.ANDROID_UIAUTOMATOR,
                                "new UiScrollable(new UiSelector().scrollable(true).instance("
                                "0)).setMaxSearchSwipes(" + MaxSwapCount + ").scrollIntoView(""new UiSelector().text(\"" + element + "\").instance(0))")
        except:
            raise TypeError("Failed to scroll...")
        return self

    @keyword
    def scroll_to_element_by_Partial_text(self, element_text):
        driver = self._current_application()

        try:
            driver.find_element(AppiumBy.ANDROID_UIAUTOMATOR,
                                "new UiScrollable(new UiSelector().scrollable(true).instance("
                                "0)).scrollIntoView(""new UiSelector().textContains(\"" + element_text + "\").instance(0))")
        except:
            raise TypeError("Failed to scroll...")

        return self

    @keyword
    def scroll_to_element_by_Partial_text_in_longView(self, element_text, MaxSwapCount):
        """ element_text : give partial element text of elements
            MaxSwapCount : Input how many times you have to swap to find element"""

        driver = self._current_application()
        try:
            driver.find_element(AppiumBy.ANDROID_UIAUTOMATOR,
                                "new UiScrollable(new UiSelector().scrollable(true).instance("
                                "0)).setMaxSearchSwipes(" + MaxSwapCount + ").scrollIntoView(""new UiSelector().textContains(\"" + element_text + "\").instance(0))")
        except:
            raise TypeError("Failed to scroll...")
        return self

    def scroll_to_element_by_ResourceId(self, resourceId):
        driver = self._current_application()

        try:
            driver.find_element(AppiumBy.ANDROID_UIAUTOMATOR,
                                "new UiScrollable(new UiSelector().scrollable(true).instance("
                                "0)).scrollIntoView(""new UiSelector().resourceIdMatches(\"" + resourceId + "\").instance(0))")
        except:
            raise print("Failed to scroll...")
        return self

    @keyword
    def wait_until_element_gets_enabled(self, element):

        ele = self.get_webelement(element)
        while True:

            if ele.is_enabled():
                break
            else:
                time.sleep(0.5)
        return self

    @keyword
    def move_to_element_and_click(self, element):
        driver = self._current_application()
        elementid = driver.find_element(AppiumBy.ID, element)
        action = TouchAction()
        action.long_press(elementid).perform()
        action.tap(elementid).perform()
        return self

    @keyword
    def set_Given_Text_clipBoard(self , text):
        driver = self._current_application()    
        driver.set_clipboard_text(text)

    
    @keyword
    def getText_From_Clipboard(self):
        driver = self._current_application() 
        return driver.get_clipboard_text()
    
    

        



