from MobileTestLibrary.ExtendedAppiumLibrary import ExtendedAppiumLibrary
from MobileTestLibrary.NativeAppsUtil import NativeAppsUtil
from MobileTestLibrary.SetupUtils import SetupUtils


class MobileTestLibrary(SetupUtils, NativeAppsUtil, ExtendedAppiumLibrary):
    def __init__(self):
        super().__init__()
        super(SetupUtils, self).__init__()
        super(NativeAppsUtil, self).__init__()
        super(ExtendedAppiumLibrary, self).__init__()
