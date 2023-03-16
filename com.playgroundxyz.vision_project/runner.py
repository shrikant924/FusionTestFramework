import os.path
from datetime import datetime

from robot import run


def runTest():
    reportDirectory = os.path.join('../FusionTestFramework/com.playgroundxyz.vision_project/com.playgroundxyz.vision_project.TestResults/',
                                   datetime.now().strftime('%d-%m-%y_%H-%M-%S'))
    os.makedirs(reportDirectory)

    try:
        # run('../FusionTestFramework/com.playgroundxyz.vision_project/com.playgroundxyz.vision_project.TestcaseSuite', outputdir=reportDirectory , splitlog=True )
        with open('stdout.txt', 'w') as stdout:
            run('../FusionTestFramework/com.playgroundxyz.vision_project/com.playgroundxyz.vision_project.TestcaseSuite/', outputdir=reportDirectory , splitlog=True, name='Example', log=None , stdout=stdout , dryrun=False)
    except:
        print("File not found ....")


def sendEmail():
    pass


class runner:
    if __name__ == "__main__":
        runTest()
