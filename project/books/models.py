# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.db import models
from datetime import date


class Author(models.Model):
    name = models.CharField(max_length=100)

    def __unicode__(self):
        return self.name

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Book Author'
        verbose_name_plural = 'Book Authors'


class Book(models.Model):
    title = models.CharField(max_length=200)
    authors = models.ManyToManyField(Author)
    published_date = models.DateField()

    def __unicode__(self):
        return self.title

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Book'
        verbose_name_plural = 'Books'


class LibraryClient(models.Model):
    name = models.CharField(max_length=100)
    contact = models.CharField(max_length=100)

    def __unicode__(self):
        return u'{} ({})'.format(self.name, self.contact)

    def __str__(self):
        return u'{} ({})'.format(self.name, self.contact)

    class Meta:
        verbose_name = 'Library Client'
        verbose_name_plural = 'Library Clients'


class BookLoan(models.Model):
    book = models.ForeignKey(Book, on_delete=models.CASCADE)
    client = models.ForeignKey(LibraryClient, on_delete=models.CASCADE)
    loan_date = models.DateField(default=date.today)
    return_date = models.DateField(default=date.today)
    returned = models.BooleanField(default=False)

    @property
    def is_overdue(self):
        if self.return_date:
            return self.return_date < date.today()
        return False

    def __unicode__(self):
        return u'{} - {} - {} - {}'.format(self.book.title, self.client.name, self.return_date, self.returned)

    def __str__(self):
        return u'{} - {} - {} - {}'.format(self.book.title, self.client.name, self.return_date, self.returned)

    class Meta:
        verbose_name = 'Book Loan'
        verbose_name_plural = 'Book Loans'
