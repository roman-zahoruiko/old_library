from django.db.models import Q
from django.http import JsonResponse
from django.shortcuts import redirect
from django.views.generic import ListView, CreateView
from django.core.urlresolvers import reverse_lazy
from django.views.decorators.http import require_POST
from django.contrib.auth.decorators import login_required
from books.mixins import LoginRequiredMixin
from books.models import Book, BookLoan
from books.forms import BookForm, BookLoanForm


class BookListView(LoginRequiredMixin, ListView):
    model = Book
    template_name = 'book_list.html'
    context_object_name = 'books'

    def get_queryset(self):
        query = self.request.GET.get('q')
        if query:
            return Book.objects.filter(Q(title__icontains=query) | Q(authors__name__icontains=query)).distinct()
        return Book.objects.all()


class BookCreateView(LoginRequiredMixin, CreateView):
    model = Book
    form_class = BookForm
    template_name = 'book_form.html'
    success_url = reverse_lazy('book-list')


class BookLoanListView(LoginRequiredMixin, ListView):
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


class BookLoanCreateView(LoginRequiredMixin, CreateView):
    model = BookLoan
    form_class = BookLoanForm
    template_name = 'bookloan_form.html'
    success_url = reverse_lazy('bookloan-list')


@login_required
@require_POST
def mark_returned(request, loan_id):
    try:
        loan = BookLoan.objects.get(id=loan_id)
        loan.returned = True
        loan.save()
        next_url = request.POST.get('next', '/')
        return redirect(next_url)
    except BookLoan.DoesNotExist:
        return JsonResponse({'success': False, 'error': 'BookLoan not found'})
