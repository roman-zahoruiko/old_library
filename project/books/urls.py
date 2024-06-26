from django.conf.urls import url
from books.views import BookListView, BookCreateView, BookLoanListView, BookLoanCreateView, mark_returned


urlpatterns = [
    url(r'^$', BookListView.as_view(), name='book-list'),
    url(r'^add/$', BookCreateView.as_view(), name='book-add'),
    url(r'^loans/$', BookLoanListView.as_view(), name='bookloan-list'),
    url(r'^loans/add/$', BookLoanCreateView.as_view(), name='bookloan-add'),
    url(r'^mark-returned/(?P<loan_id>\d+)/$', mark_returned, name='mark-returned'),
]
