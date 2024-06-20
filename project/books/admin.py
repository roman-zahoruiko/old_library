from django.contrib import admin
from books.models import Author, Book, BookLoan, LibraryClient


admin.site.register(Author)
admin.site.register(Book)
admin.site.register(BookLoan)
admin.site.register(LibraryClient)
