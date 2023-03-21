from typing import Optional, Union
from SeleniumLibrary import SeleniumLibrary
from robot.api.deco import library, keyword
from robot.libraries.BuiltIn import BuiltIn


class SeleniumUtils(SeleniumLibrary):

    @keyword
    def scan_QR_code(self, img):
        import zxing
        reader = zxing.BarCodeReader()
        print(reader.zxing_version, reader.zxing_version_info)
        barcode = reader.decode(img)
        return barcode.raw
        
        
    
