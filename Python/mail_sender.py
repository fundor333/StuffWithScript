import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText


def mail_sender(mail_body, server_adress, sender_password, from_mail, to_mail, subject_mail='smtp.gmail.com', door=587):
    fromaddr = from_mail
    toaddr = to_mail
    msg = MIMEMultipart()
    msg['From'] = fromaddr
    msg['To'] = toaddr
    msg['Subject'] = subject_mail

    body = mail_body
    msg.attach(MIMEText(body, 'plain'))

    server = smtplib.SMTP(server_adress, door)
    server.starttls()
    server.login(fromaddr, sender_password)
    text = msg.as_string()
    server.sendmail(fromaddr, toaddr, text)
    server.quit()
