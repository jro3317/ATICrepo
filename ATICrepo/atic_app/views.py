from django.shortcuts import render
from django.views.generic import TemplateView
from django.shortcuts import redirect
from django.core.mail import send_mail

# Create your views here.

class ContactView(TemplateView):
    template_name = 'contact.html'
    
    def post(self, request, *args, **kwargs):
        
        name = self.request.POST.get('name', '')
        email = self.request.POST.get('email', '')
        message = self.request.POST.get('message', '')
        msg = "{0},\n{1}\n\n{2}".format(name, email, message)
        send_mail(name, msg, email, ['christopher.m.hedrick@gmail.com'], fail_silently=False)
        return redirect('/')

