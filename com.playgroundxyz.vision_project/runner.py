import os.path
from datetime import datetime
from robot import run
import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from email.mime.application import MIMEApplication
reportDirectory = os.path.join('../FusionTestFramework/com.playgroundxyz.vision_project/com.playgroundxyz.vision_project.TestResults/',
                                   datetime.now().strftime('%d-%m-%y_%H-%M-%S'))

def runTest():
    
    os.makedirs(reportDirectory)

    try:
        # run('../FusionTestFramework/com.playgroundxyz.vision_project/com.playgroundxyz.vision_project.TestcaseSuite', outputdir=reportDirectory , splitlog=True )
        with open('stdout.txt', 'w') as stdout:
            run('../FusionTestFramework/com.playgroundxyz.vision_project/com.playgroundxyz.vision_project.TestcaseSuite/TC008.robot',
                outputdir=reportDirectory, splitlog=True, name='com.playgroundxyz.vision_project', log=None, stdout=stdout, dryrun=False)
    except:
        raise FileNotFoundError


def sendEmail():
    import smtplib
    from email.mime.text import MIMEText
    from email.mime.multipart import MIMEMultipart
    from email.mime.application import MIMEApplication

    # Sender email credentials
    sender_email = "automationtestreport123@gmail.com"
    sender_password = "gkooklrbwqugazvc"

    # Recipient email address
    recipient_email = "shrikantlohar321@gmail.com"
    cc_recipient_email = ['shrikantl@zimetric.com' , 'xyz@gmail.com']


    # Create a multipart message object
    message = MIMEMultipart()

    # Set the subject of the email
    message['Subject'] = "Test Execution Report for 'com.playgroundxyz.vision_project' & Execution Date : " + str(datetime.now())

    # Set the sender and recipient email addresses
    message['From'] = sender_email
    message['To'] = recipient_email
    message['Cc'] = ', '.join(cc_recipient_email)

    # Add a message body
    body = """
    Hi All,

    Please find the attached testcase execution report attached here with this mail.

    Note:- this email is auto-genernarated.

    Thanks,              
            """
    message.attach(MIMEText(body, 'plain'))

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
        server.sendmail(sender_email, [recipient_email] + cc_recipient_email, message.as_string())

class runner:
    if __name__ == "__main__":
        runTest()
        sendEmail()
