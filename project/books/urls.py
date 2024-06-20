from django.conf.urls import url
from books.views import BookListView, BookCreateView, BookLoanListView, BookLoanCreateView


urlpatterns = [
    url(r'^$', BookListView.as_view(), name='book-list'),
    url(r'^add/$', BookCreateView.as_view(), name='book-add'),
    url(r'^loans/$', BookLoanListView.as_view(), name='bookloan-list'),
    url(r'^loans/add/$', BookLoanCreateView.as_view(), name='bookloan-add'),
]
