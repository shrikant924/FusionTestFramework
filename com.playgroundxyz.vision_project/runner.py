import os.path
import datetime
import smtplib

from datetime import datetime
from robot import run
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from email.mime.application import MIMEApplication
from robot.api import ExecutionResult

reportDirectory = os.path.join('../FusionTestFramework/com.playgroundxyz.vision_project/com.playgroundxyz.vision_project.TestResults/',
                               datetime.now().strftime('%d-%m-%y_%H-%M-%S'))

os.makedirs(reportDirectory)
stoutFilepath = reportDirectory + "/stdout.txt"
outputXMLPath = reportDirectory + "/output.xml"

def runTest():

    try:
        # run('../FusionTestFramework/com.playgroundxyz.vision_project/com.playgroundxyz.vision_project.TestcaseSuite', outputdir=reportDirectory , splitlog=True )
        with open(stoutFilepath, 'w') as stdout:
            run('../FusionTestFramework/com.playgroundxyz.vision_project/com.playgroundxyz.vision_project.TestcaseSuite\TC008.robot',
                outputdir=reportDirectory, splitlog=True, name='com.playgroundxyz.vision_project', log=None, stdout=stdout, dryrun=False)

    except:
        raise FileNotFoundError
    
def sendEmail():
    # Sender email credentials
    sender_email = "automationtestreport123@gmail.com"
    sender_password = "gkooklrbwqugazvc"

    # Recipient email address
    recipient_email = "shrikantlohar321@gmail.com"
    cc_recipient_email = ['shrikantl@zimetric.com']

    # Create a multipart message object
    message = MIMEMultipart()

    # Set the subject of the email
    message['Subject'] = "Test Execution Report for 'com.playgroundxyz.vision_project' & Execution Date : " + \
        str(datetime.now())

    # Set the sender and recipient email addresses
    message['From'] = sender_email
    message['To'] = recipient_email
    message['Cc'] = ', '.join(cc_recipient_email)

    # Load output and log files
        
    result = ExecutionResult(outputXMLPath)

    total_testcases = result.statistics.total.passed + result.statistics.total.failed + result.statistics.total.skipped
    # Add a message body

    table_data = [total_testcases, result.statistics.total.passed , result.statistics.total.failed , result.statistics.total.skipped]
        
    table_html = '<table  style="width:100%; text-align:center; border:1px solid black">'
    table_html += '<tr style="background-color: yellow; font-weight:bold;border:1px solid black"> <td style="border:1px solid black">No of Total Testcases</td> <td style="border:1px solid black">Passed Testcases</td> <td style="border:1px solid black">Failed Testcases</td> <td style="border:1px solid black">Skipped Testcases</td></tr>'        
    for row in table_data:
            table_html += f'<td style="border:1px solid black" >{row}</td>'
    table_html += '</table>'

    body = '''
    Hi All,

    Please find the attached testcase execution report attached here with this mail.
            
    Please find the below test esecution status summary:
            
    '''
    regards = '''
        
    Note:- This email was auto-genernarated after test execution.

    Thanks, '''

    message.attach(MIMEText(body, 'plain'))
    message.attach(MIMEText(table_html, 'html'))
    message.attach(MIMEText(regards, 'plain'))


    # Open the file you want to attach
    filename = reportDirectory + "/report.html"
    with open(filename, "rb") as attachment:
        # Add the attachment to the message
        part = MIMEApplication(attachment.read(), Name=filename)
        part['Content-Disposition'] = f'attachment; filename="{filename}"'
        message.attach(part)

    # Connect to the SMTP server and send the message
    with smtplib.SMTP_SSL('smtp.gmail.com', 465) as server:
        server.ehlo()
        server.login(sender_email, sender_password)
        server.sendmail(
            sender_email, [recipient_email] + cc_recipient_email, message.as_string())

class runner:
    if __name__ == "__main__":
        runTest()
        sendEmail()
