# Generated by Django 5.0.4 on 2024-04-30 11:19

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("contacts", "0001_initial"),
    ]

    operations = [
        migrations.AlterField(
            model_name="contact",
            name="birthday",
            field=models.DateField(),
        ),
        migrations.AlterField(
            model_name="contact",
            name="email",
            field=models.EmailField(max_length=254),
        ),
        migrations.AlterField(
            model_name="contact",
            name="phone",
            field=models.CharField(
                max_length=10,
                validators=[django.core.validators.MinLengthValidator(10)],
            ),
        ),
    ]
