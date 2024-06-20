from django import forms
from books.models import Book, BookLoan


class BookForm(forms.ModelForm):

    published_date = forms.DateField(widget=forms.DateInput(attrs={'type': 'date'}))

    class Meta:
        model = Book
        fields = ['title', 'authors', 'published_date']


class BookLoanForm(forms.ModelForm):
    loan_date = forms.DateField(widget=forms.DateInput(attrs={'type': 'date'}))
    return_date = forms.DateField(widget=forms.DateInput(attrs={'type': 'date'}))

    class Meta:
        model = BookLoan
        fields = ['book', 'client', 'loan_date', 'return_date']
