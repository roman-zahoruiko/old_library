from django.conf.urls import include, url
from django.contrib import admin
from django.shortcuts import redirect


def redirect_to_loans(request):
    return redirect('/books/loans/')


urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),
    url(r'^books/', include('books.urls')),
    #
    url(r'^$', redirect_to_loans),
]
