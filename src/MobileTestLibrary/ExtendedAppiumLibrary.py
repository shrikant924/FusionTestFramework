import time

from AppiumLibrary import AppiumLibrary
from appium.webdriver.common.appiumby import AppiumBy
from appium.webdriver.common.touch_action import TouchAction
from robot.api.deco import library, keyword


@library
class ExtendedAppiumLibrary(AppiumLibrary):
    def __init__(self):
        super(AppiumLibrary, self).__init__()

    @property
    def _log_level(self):
        return super()._log_level

    @keyword
    def _debug(self, message):
        super()._debug(message)

    @keyword
    def _info(self, message):
        super()._info(message)

    @keyword
    def _warn(self, message):
        super()._warn(message)

    @keyword
    def _html(self, message):
        super()._html(message)

    @keyword
    def _get_log_dir(self):
        return super()._get_log_dir()

    @keyword
    def _log(self, message, level='INFO'):
        super()._log(message, level)

    @keyword
    def _log_list(self, items, what='item'):
        return super()._log_list(items, what)

    @keyword
    def register_keyword_to_run_on_failure(self, keyword):
        return super().register_keyword_to_run_on_failure(keyword)

    @keyword
    def _run_on_failure(self):
        super()._run_on_failure()

    @keyword
    def _run_on_failure_error(self, err):
        super()._run_on_failure_error(err)

    @keyword
    def clear_text(self, locator):
        super().clear_text(locator)

    @keyword
    def click_element(self, locator):
        super().click_element(locator)

    @keyword
    def click_button(self, index_or_name):
        super().click_button(index_or_name)

    @keyword
    def click_text(self, text, exact_match=False):
        super().click_text(text, exact_match)

    @keyword
    def input_text_into_current_element(self, text):
        super().input_text_into_current_element(text)

    @keyword
    def input_text(self, locator, text):
        super().input_text(locator, text)

    @keyword
    def input_password(self, locator, text):
        super().input_password(locator, text)

    @keyword
    def input_value(self, locator, text):
        super().input_value(locator, text)

    @keyword
    def hide_keyboard(self, key_name=None):
        super().hide_keyboard(key_name)

    @keyword
    def is_keyboard_shown(self):
        return super().is_keyboard_shown()

    @keyword
    def page_should_contain_text(self, text, loglevel='INFO'):
        return super().page_should_contain_text(text, loglevel)

    @keyword
    def page_should_not_contain_text(self, text, loglevel='INFO'):
        return super().page_should_not_contain_text(text, loglevel)

    @keyword
    def page_should_contain_element(self, locator, loglevel='INFO'):
        return super().page_should_contain_element(locator, loglevel)

    @keyword
    def page_should_not_contain_element(self, locator, loglevel='INFO'):
        return super().page_should_not_contain_element(locator, loglevel)

    @keyword
    def element_should_be_disabled(self, locator, loglevel='INFO'):
        return super().element_should_be_disabled(locator, loglevel)

    @keyword
    def element_should_be_enabled(self, locator, loglevel='INFO'):
        return super().element_should_be_enabled(locator, loglevel)

    @keyword
    def element_should_be_visible(self, locator, loglevel='INFO'):
        return super().element_should_be_visible(locator, loglevel)

    @keyword
    def element_name_should_be(self, locator, expected):
        return super().element_name_should_be(locator, expected)

    @keyword
    def element_value_should_be(self, locator, expected):
        return super().element_value_should_be(locator, expected)

    @keyword
    def element_attribute_should_match(self, locator, attr_name, match_pattern, regexp=False):
        super().element_attribute_should_match(locator, attr_name, match_pattern, regexp)

    @keyword
    def element_should_contain_text(self, locator, expected, message=''):
        return super().element_should_contain_text(locator, expected, message)

    @keyword
    def element_should_not_contain_text(self, locator, expected, message=''):
        return super().element_should_not_contain_text(locator, expected, message)

    @keyword
    def element_text_should_be(self, locator, expected, message=''):
        return super().element_text_should_be(locator, expected, message)

    @keyword
    def get_webelement(self, locator):
        return super().get_webelement(locator)

    @keyword
    def scroll_element_into_view(self, locator):
        return super().scroll_element_into_view(locator)

    @keyword
    def get_webelement_in_webelement(self, element, locator):
        return super().get_webelement_in_webelement(element, locator)

    @keyword
    def get_webelements(self, locator):
        return super().get_webelements(locator)

    @keyword
    def get_element_attribute(self, locator, attribute):
        return super().get_element_attribute(locator, attribute)

    @keyword
    def get_element_location(self, locator):
        return super().get_element_location(locator)

    @keyword
    def get_element_size(self, locator):
        return super().get_element_size(locator)

    @keyword
    def get_element_rect(self, locator):
        return super().get_element_rect(locator)

    @keyword
    def get_text2(self, locator):
        return super().get_text(locator)

    @keyword
    def get_matching_xpath_count(self, xpath):
        return super().get_matching_xpath_count(xpath)

    @keyword
    def text_should_be_visible(self, text, exact_match=False, loglevel='INFO'):
        return super().text_should_be_visible(text, exact_match, loglevel)

    @keyword
    def xpath_should_match_x_times(self, xpath, count, error=None, loglevel='INFO'):
        return super().xpath_should_match_x_times(xpath, count, error, loglevel)

    @keyword
    def _is_index(self, index_or_name):
        return super()._is_index(index_or_name)

    @keyword
    def _click_element_by_name(self, name):
        return super()._click_element_by_name(name)

    @keyword
    def _find_elements_by_class_name(self, class_name):
        return super()._find_elements_by_class_name(class_name)

    @keyword
    def _find_element_by_class_name(self, class_name, index_or_name):
        return super()._find_element_by_class_name(class_name, index_or_name)

    @keyword
    def _get_class(self, platform_class_dict):
        return super()._get_class(platform_class_dict)

    @keyword
    def _is_support_platform(self, platform_class_dict):
        return super()._is_support_platform(platform_class_dict)

    @keyword
    def _click_element_by_class_name(self, class_name, index_or_name):
        return super()._click_element_by_class_name(class_name, index_or_name)

    @keyword
    def _element_clear_text_by_locator(self, locator):
        return super()._element_clear_text_by_locator(locator)

    @keyword
    def _element_input_text_by_locator(self, locator, text):
        return super()._element_input_text_by_locator(locator, text)

    @keyword
    def _element_input_text_by_class_name(self, class_name, index_or_name, text):
        return super()._element_input_text_by_class_name(class_name, index_or_name, text)

    @keyword
    def _element_input_value_by_locator(self, locator, text):
        return super()._element_input_value_by_locator(locator, text)

    @keyword
    def _element_find(self, locator, first_only, required, tag=None):
        return super()._element_find(locator, first_only, required, tag)

    @keyword
    def _element_find_by_text(self, text, exact_match=False):
        return super()._element_find_by_text(text, exact_match)

    @keyword
    def _get_text(self, locator):
        return super()._get_text(locator)

    @keyword
    def _is_text_present(self, text):
        return super()._is_text_present(text)

    @keyword
    def _is_element_present(self, locator):
        return super()._is_element_present(locator)

    @keyword
    def _is_visible(self, locator):
        return super()._is_visible(locator)

    @keyword
    def capture_page_screenshot(self, filename=None):
        return super().capture_page_screenshot(filename)

    @keyword
    def _get_screenshot_paths(self, filename):
        return super()._get_screenshot_paths(filename)

    @keyword
    def close_application(self):
        super().close_application()

    @keyword
    def close_all_applications(self):
        super().close_all_applications()

    @keyword
    def open_application(self, remote_url, alias=None, **kwargs):
        return super().open_application(remote_url, alias, **kwargs)

    @keyword
    def switch_application(self, index_or_alias):
        return super().switch_application(index_or_alias)

    @keyword
    def launch_application(self):
        super().launch_application()

    @keyword
    def quit_application(self):
        super().quit_application()

    @keyword
    def reset_application(self):
        super().reset_application()

    @keyword
    def remove_application(self, application_id):
        super().remove_application(application_id)

    @keyword
    def get_appium_timeout(self):
        return super().get_appium_timeout()

    @keyword
    def set_appium_timeout(self, seconds):
        return super().set_appium_timeout(seconds)

    @keyword
    def get_appium_sessionId(self):
        return super().get_appium_sessionId()

    @keyword
    def get_source(self):
        return super().get_source()

    @keyword
    def log_source(self, loglevel='INFO'):
        return super().log_source(loglevel)

    @keyword
    def execute_script(self, script, **kwargs):
        return super().execute_script(script, **kwargs)

    @keyword
    def execute_async_script(self, script, **kwargs):
        return super().execute_async_script(script, **kwargs)

    @keyword
    def execute_adb_shell(self, command, *args):
        return super().execute_adb_shell(command, *args)

    @keyword
    def execute_adb_shell_timeout(self, command, timeout, *args):
        return super().execute_adb_shell_timeout(command, timeout, *args)

    @keyword
    def go_back(self):
        super().go_back()

    @keyword
    def lock(self, seconds=5):
        super().lock(seconds)

    @keyword
    def background_app(self, seconds=5):
        super().background_app(seconds)

    @keyword
    def background_application(self, seconds=5):
        super().background_application(seconds)

    @keyword
    def activate_application(self, app_id):
        super().activate_application(app_id)

    @keyword
    def terminate_application(self, app_id):
        return super().terminate_application(app_id)

    @keyword
    def stop_application(self, app_id, timeout=5000, include_stderr=True):
        super().stop_application(app_id, timeout, include_stderr)

    @keyword
    def touch_id(self, match=True):
        super().touch_id(match)

    @keyword
    def toggle_touch_id_enrollment(self):
        super().toggle_touch_id_enrollment()

    @keyword
    def shake(self):
        super().shake()

    @keyword
    def portrait(self):
        super().portrait()

    @keyword
    def landscape(self):
        super().landscape()

    @keyword
    def get_current_context(self):
        return super().get_current_context()

    @keyword
    def get_contexts(self):
        return super().get_contexts()

    @keyword
    def get_window_height(self):
        return super().get_window_height()

    @keyword
    def get_window_width(self):
        return super().get_window_width()

    @keyword
    def switch_to_context(self, context_name):
        super().switch_to_context(context_name)

    @keyword
    def switch_to_frame(self, frame):
        super().switch_to_frame(frame)

    @keyword
    def switch_to_parent_frame(self):
        super().switch_to_parent_frame()

    @keyword
    def switch_to_window(self, window_name):
        super().switch_to_window(window_name)

    @keyword
    def go_to_url(self, url):
        super().go_to_url(url)

    @keyword
    def get_capability(self, capability_name):
        return super().get_capability(capability_name)

    @keyword
    def get_window_title(self):
        return super().get_window_title()

    @keyword
    def get_window_url(self):
        return super().get_window_url()

    @keyword
    def get_windows(self):
        return super().get_windows()

    @keyword
    def _current_application(self):
        return super()._current_application()

    @keyword
    def _get_platform(self):
        return super()._get_platform()

    @keyword
    def _is_platform(self, platform):
        return super()._is_platform(platform)

    @keyword
    def _is_ios(self):
        return super()._is_ios()

    @keyword
    def _is_android(self):
        return super()._is_android()

    @keyword
    def _rotate(self, orientation):
        super()._rotate(orientation)

    @keyword
    def wait_until_element_is_visible(self, locator, timeout=None, error=None):
        super().wait_until_element_is_visible(locator, timeout, error)

    @keyword
    def wait_until_page_contains(self, text, timeout=None, error=None):
        super().wait_until_page_contains(text, timeout, error)

    @keyword
    def wait_until_page_does_not_contain(self, text, timeout=None, error=None):
        super().wait_until_page_does_not_contain(text, timeout, error)

    @keyword
    def wait_until_page_contains_element(self, locator, timeout=None, error=None):
        super().wait_until_page_contains_element(locator, timeout, error)

    @keyword
    def wait_until_page_does_not_contain_element(self, locator, timeout=None, error=None):
        super().wait_until_page_does_not_contain_element(locator, timeout, error)

    @keyword
    def _wait_until(self, timeout, error, function, *args):
        super()._wait_until(timeout, error, function, *args)

    @keyword
    def _wait_until_no_error(self, timeout, wait_func, *args):
        super()._wait_until_no_error(timeout, wait_func, *args)

    @keyword
    def _format_timeout(self, timeout):
        return super()._format_timeout(timeout)

    @keyword
    def zoom(self, locator, percent="200%", steps=1):
        super().zoom(locator, percent, steps)

    @keyword
    def pinch(self, locator, percent="200%", steps=1):
        super().pinch(locator, percent, steps)

    @keyword
    def swipe(self, start_x, start_y, offset_x, offset_y, duration=1000):
        super().swipe(start_x, start_y, offset_x, offset_y, duration)

    @keyword
    def swipe_by_percent(self, start_x, start_y, end_x, end_y, duration=1000):
        super().swipe_by_percent(start_x, start_y, end_x, end_y, duration)

    @keyword
    def scroll(self, start_locator, end_locator):
        super().scroll(start_locator, end_locator)

    @keyword
    def scroll_down(self, locator):
        super().scroll_down(locator)

    @keyword
    def scroll_up(self, locator):
        super().scroll_up(locator)

    @keyword
    def long_press(self, locator, duration=1000):
        super().long_press(locator, duration)

    @keyword
    def tap(self, locator, x_offset=None, y_offset=None, count=1):
        super().tap(locator, x_offset, y_offset, count)

    @keyword
    def tap_with_positions(self, duration=500, *locations):
        super().tap_with_positions(duration, *locations)

    @keyword
    def tap_with_number_of_taps(self, locator, number_of_taps, number_of_touches):
        super().tap_with_number_of_taps(locator, number_of_taps, number_of_touches)

    @keyword
    def click_a_point(self, x=0, y=0, duration=100):
        super().click_a_point(x, y, duration)

    @keyword
    def click_element_at_coordinates(self, coordinate_X, coordinate_Y):
        super().click_element_at_coordinates(coordinate_X, coordinate_Y)

    @keyword
    def drag_and_drop(self):
        super().drag_and_drop()

    @keyword
    def flick(self):
        super().flick()

    @keyword
    def press_keycode(self, keycode, metastate=None):
        super().press_keycode(keycode, metastate)

    @keyword
    def long_press_keycode(self, keycode, metastate=None):
        super().long_press_keycode(keycode, metastate)

    @keyword
    def open_notifications(self):
        super().open_notifications()

    @keyword
    def get_network_connection_status(self):
        return super().get_network_connection_status()

    @keyword
    def set_network_connection_status(self, connectionStatus):
        return super().set_network_connection_status(connectionStatus)

    @keyword
    def pull_file(self, path, decode=False):
        return super().pull_file(path, decode)

    @keyword
    def pull_folder(self, path, decode=False):
        return super().pull_folder(path, decode)

    @keyword
    def push_file(self, path, data, encode=False):
        super().push_file(path, data, encode)

    @keyword
    def delete_file(self, path, timeout=5000, include_stderr=True):
        super().delete_file(path, timeout, include_stderr)

    @keyword
    def get_activity(self):
        return super().get_activity()

    @keyword
    def start_activity(self, appPackage, appActivity, **opts):
        super().start_activity(appPackage, appActivity, **opts)

    @keyword
    def wait_activity(self, activity, timeout, interval=1):
        return super().wait_activity(activity, timeout, interval)

    @keyword
    def install_app(self, app_path, app_package):
        return super().install_app(app_path, app_package)

    @keyword
    def set_location(self, latitude, longitude, altitude=10):
        super().set_location(latitude, longitude, altitude)

    @keyword
    def start_screen_recording(self, timeLimit='180s', **options):
        super().start_screen_recording(timeLimit, **options)

    @keyword
    def stop_screen_recording(self, filename=None, **options):
        return super().stop_screen_recording(filename, **options)

    @keyword
    def _save_recording(self, filename, options):
        return super()._save_recording(filename, options)

    @keyword
    def _set_output_format(self):
        return super()._set_output_format()

    @keyword
    def _get_screenrecord_paths(self, options, filename=None):
        return super()._get_screenrecord_paths(options, filename)

    @keyword
    def _is_remotepath_set(self, options):
        return super()._is_remotepath_set(options)

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
