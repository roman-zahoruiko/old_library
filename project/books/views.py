from django.views.generic import ListView, CreateView
from django.core.urlresolvers import reverse_lazy
from books.models import Book, BookLoan
from books.forms import BookForm, BookLoanForm


class BookListView(ListView):
    model = Book
    template_name = 'book_list.html'
    context_object_name = 'books'


class BookCreateView(CreateView):
    model = Book
    form_class = BookForm
    template_name = 'book_form.html'
    success_url = reverse_lazy('book-list')


class BookLoanListView(ListView):
    model = BookLoan
    template_name = 'bookloan_list.html'
    context_object_name = 'bookloans'


class BookLoanCreateView(CreateView):
    model = BookLoan
    form_class = BookLoanForm
    template_name = 'bookloan_form.html'
    success_url = reverse_lazy('bookloan-list')
