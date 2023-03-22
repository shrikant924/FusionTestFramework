""" ----------------------------File path configuration Details --------------------------------------------------"""

from MobileTestLibrary.JsonFileReader import JsonFileReader


deviceDetails = JsonFileReader.read_Json_file('\\FusionTestFramework\\com.playgroundxyz.vision_project\\com.playgroundxyz'
                                              '.vision_project.ConfigFiles\\deviceDetails.json')
testData = JsonFileReader.read_Json_file('\\FusionTestFramework\\com.playgroundxyz.vision_project\\com.playgroundxyz.vision_project'
                                         '.ConfigFiles\\testData.json')

""" --------------------------------------------------Testdata-----------------------------------------------------"""

deviceName = testData['deviceName']
Browser = testData["Browser"]
remote_url = deviceDetails[deviceName]['appiumurl']
url = testData['Deeplink_url']
currentAppVersion = testData['currentAppVersion']
device = deviceDetails[deviceName]
