# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import datetime


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Author',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Book',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=200)),
                ('published_date', models.DateField()),
                ('authors', models.ManyToManyField(to='books.Author')),
            ],
        ),
        migrations.CreateModel(
            name='BookLoan',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('loan_date', models.DateField(default=datetime.date.today)),
                ('return_date', models.DateField(null=True, blank=True)),
                ('book', models.ForeignKey(to='books.Book')),
            ],
        ),
        migrations.CreateModel(
            name='LibraryClient',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=100)),
                ('contact', models.CharField(max_length=100)),
            ],
        ),
        migrations.AddField(
            model_name='bookloan',
            name='client',
            field=models.ForeignKey(to='books.LibraryClient'),
        ),
    ]
