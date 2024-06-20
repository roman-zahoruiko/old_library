from django.db.models import Q
from django.views.generic import ListView, CreateView
from django.core.urlresolvers import reverse_lazy
from books.models import Book, BookLoan
from books.forms import BookForm, BookLoanForm


class BookListView(ListView):
    model = Book
    template_name = 'book_list.html'
    context_object_name = 'books'

    def get_queryset(self):
        query = self.request.GET.get('q')
        if query:
            return Book.objects.filter(Q(title__icontains=query) | Q(authors__name__icontains=query)).distinct()
        return Book.objects.all()


class BookCreateView(CreateView):
    model = Book
    form_class = BookForm
    template_name = 'book_form.html'
    success_url = reverse_lazy('book-list')


class BookLoanListView(ListView):
    model = BookLoan
    template_name = 'bookloan_list.html'
    context_object_name = 'bookloans'

    def get_queryset(self):
        query = self.request.GET.get('q')
        filter_returned = self.request.GET.get('filter_returned', 'false') == 'true'
        queryset = BookLoan.objects.all()

        if query:
            queryset = queryset.filter(
                Q(book__title__icontains=query) |
                Q(client__name__icontains=query) |
                Q(loan_date__icontains=query) |
                Q(return_date__icontains=query)
            )

        if filter_returned:
            queryset = queryset.filter(returned=False)

        return queryset


class BookLoanCreateView(CreateView):
    model = BookLoan
    form_class = BookLoanForm
    template_name = 'bookloan_form.html'
    success_url = reverse_lazy('bookloan-list')
