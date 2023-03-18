from datetime import datetime
from appium.webdriver.appium_service import AppiumService, DEFAULT_PORT
from robot.api.deco import keyword, library

appium_service = AppiumService()


@library
class SetupUtils:

    @keyword
    def start_appium_service(self):
        appiumLogFileName = datetime.now().strftime('%d-%m-%y_%H-%M-%S')
        path = '/FusionTestFramework/Log/' + 'appiumLog_' + appiumLogFileName + '.log'
        appium_service.start(
            args=['--address', '127.0.0.1', '-p', str(DEFAULT_PORT), '--base-path', '/wd/hub/', '--log', path ,'--log-level', 
                  'debug' ,'--local-timezone'])

        assert appium_service.is_running
        assert appium_service.is_listening

    @keyword
    def stop_appium_service(self):
        appium_service.stop()
        assert (not appium_service.is_running)
        assert (not appium_service.is_listening)

    