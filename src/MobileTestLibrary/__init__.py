from src.MobileTestLibrary.ExtendedAppiumLibrary import ExtendedAppiumLibrary
from src.MobileTestLibrary.NativeAppsUtil import NativeAppsUtil
from src.MobileTestLibrary.SetupUtils import SetupUtils


class MobileTestLibrary(SetupUtils, NativeAppsUtil, ExtendedAppiumLibrary):
    def __init__(self):
        super().__init__()
        super(SetupUtils, self).__init__()
        super(NativeAppsUtil, self).__init__()
        super(ExtendedAppiumLibrary, self).__init__()
    
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'

   