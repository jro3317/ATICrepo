from django.conf.urls import include, url
from django.contrib import admin
from django.views.generic import TemplateView

urlpatterns = [
    # Examples:
    # url(r'^$', 'atic_django.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),

    url(r'^admin/', include(admin.site.urls)),
    url(r'^$', TemplateView.as_view(template_name="index.html")),
    url(r'^about/$', TemplateView.as_view(template_name="info.html")),
    url(r'^projects/$', TemplateView.as_view(template_name="projects.html")),
    url(r'^contact/$', TemplateView.as_view(template_name="contact.html"))
]
