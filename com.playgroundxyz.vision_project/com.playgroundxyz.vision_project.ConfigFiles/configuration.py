from MobileTestLibrary.JsonFileReader import read_Json_file

""" ----------------------------File path configuration Details --------------------------------------------------"""

deviceDetails = read_Json_file('\\FusionTestFramework\\com.playgroundxyz.vision_project\\com.playgroundxyz'
                               '.vision_project.ConfigFiles\\deviceDetails.json')
testData = read_Json_file('\\FusionTestFramework\\com.playgroundxyz.vision_project\\com.playgroundxyz.vision_project'
                          '.ConfigFiles\\testData.json')

""" --------------------------------------------------Testdata-----------------------------------------------------"""

deviceName = testData['deviceName']
Browser = testData["Browser"]
remote_url = testData['remote_url']
url = testData['Deeplink_url']
currentAppVersion = testData['currentAppVersion']
device = deviceDetails[deviceName]
