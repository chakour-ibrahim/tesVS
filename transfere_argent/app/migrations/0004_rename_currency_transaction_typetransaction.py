# Generated by Django 4.2.3 on 2023-07-30 12:08

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0003_transaction'),
    ]

    operations = [
        migrations.RenameField(
            model_name='transaction',
            old_name='currency',
            new_name='typetransaction',
        ),
    ]