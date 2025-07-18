import smtplib
from email.message import EmailMessage
def send_mail(to,body,subject):
    server=smtplib.SMTP_SSL('smtp.gmail.com',465)
    server.login('konchadaswetha520@gmail.com','ervi ckug rrbj ncow')
    msg=EmailMessage()
    msg['FROM']='konchadaswetha520@gmail.com'
    msg['To']=to
    msg['SUBJECT']=subject
    msg.set_content(body)
    msg.set_content(body)
    server.send_message(msg)
    server.close()