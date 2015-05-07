from django.shortcuts import render
from django.views.generic import TemplateView
from django.shortcuts import redirect

from atic_django.settings import *

import smtplib
import email.utils
from email.mime.text import MIMEText

# Create your views here.

class ContactView(TemplateView):
    template_name = 'contact.html'

    def email(self, header, msg):
        msg = MIMEText(msg)
        msg['To'] = email.utils.formataddr(('TO WHO', EMAIL_TO))
        msg['From'] = email.utils.formataddr(('SERVER EMAIL', EMAIL_HOST_EMAIL))
        msg['Subject'] = header
        server = smtplib.SMTP(EMAIL_HOST, EMAIL_PORT)
        server.ehlo()
        server.starttls()
        server.login(EMAIL_HOST_USER, EMAIL_HOST_PASSWORD)
        try:
            server.sendmail(EMAIL_HOST_EMAIL, [EMAIL_TO], msg.as_string())
        finally:
            server.quit()

    def post(self, request, *args, **kwargs):
        name = self.request.POST.get('name', '')
        email = self.request.POST.get('email', '')
        message = self.request.POST.get('message', '')
        header = name
        msg = "{0},\n{1}\n\n{2}".format(name, email, message)
        self.email(header, msg)
        return redirect('/')

