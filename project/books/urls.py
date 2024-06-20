from django.conf.urls import url
from books.views import BookListView, BookCreateView


urlpatterns = [
    url(r'^$', BookListView.as_view(), name='book-list'),
    url(r'^add/$', BookCreateView.as_view(), name='book-add'),
]
