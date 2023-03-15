from appium.webdriver.appium_service import AppiumService, DEFAULT_PORT
from robot.api.deco import keyword, library


@library
class SetupUtils:

    @keyword
    def start_appium_service(self):
        appium_service = AppiumService()
        appium_service.start(
             args=['--address', '127.0.0.1', '-p', str(DEFAULT_PORT), '--base-path', '/wd/hub/'] )
                
        assert appium_service.is_running
        assert appium_service.is_listening

    @keyword
    def stop_appium_service(self):
        appium_service = AppiumService()
        appium_service.stop()
        assert (not appium_service.is_running)
        assert (not appium_service.is_listening)

    # @keyword
    # def stop_emulator(self):
    #
    #     try:
    #         print('closing emulator...')
    #         time.sleep(15.0)
    #         os.system('adb -s emulator-5554 emu kill')
    #         print('emulator closed successfully...')
    #
    #     except:
    #         raise print("No emulator running...")

    # @keyword
    # def start_emulator(self, emulator_name, deviceType):
    #     if deviceType == 'virtual':
    #         print('Starting emulator...')
    #         subprocess.Popen(['emulator', '-avd', emulator_name])
    #         os.system('adb wait-for-device')
    #         os.system('Perform whatever adb commands you need')
    #         print('Started emulator...')
    #     else:
    #         print("Testing started")
