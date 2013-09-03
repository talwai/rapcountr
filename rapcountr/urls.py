from django.conf.urls import patterns, include, url
from rapcountr.views import get_frequencies, index_view



# Uncomment the next two lines to enable the admin:
# from django.contrib import admin
# admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'rapcountr.views.home', name='home'),
    # url(r'^rapcountr/', include('rapcountr.foo.urls')),
    url(r'^artist/([^/]+)/([^/]+)', get_frequencies),
    url('^',index_view)

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    # url(r'^admin/', include(admin.site.urls)),
)
