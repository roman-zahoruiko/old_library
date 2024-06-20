# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('books', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='bookloan',
            name='returned',
            field=models.BooleanField(default=False),
        ),
        migrations.AlterField(
            model_name='bookloan',
            name='return_date',
            field=models.DateField(default=datetime.date.today),
        ),
    ]
