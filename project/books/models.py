from django.db import models
from datetime import date


class Author(models.Model):
    name = models.CharField(max_length=100)

    def __str__(self):
        return self.name


class Book(models.Model):
    title = models.CharField(max_length=200)
    authors = models.ManyToManyField(Author)
    published_date = models.DateField()

    def __str__(self):
        return self.title


class LibraryClient(models.Model):
    name = models.CharField(max_length=100)
    contact = models.CharField(max_length=100)

    def __str__(self):
        return self.name


class BookLoan(models.Model):
    book = models.ForeignKey(Book, on_delete=models.CASCADE)
    client = models.ForeignKey(LibraryClient, on_delete=models.CASCADE)
    loan_date = models.DateField(default=date.today)
    return_date = models.DateField(blank=True, null=True)

    @property
    def is_overdue(self):
        if self.return_date:
            return self.return_date < date.today()
        return False

    def __str__(self):
        return u'{} - {}'.format(self.book.title, self.client.name)
