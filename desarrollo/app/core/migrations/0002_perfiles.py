# Generated by Django 3.2 on 2021-04-14 09:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Perfiles',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('universidad', models.TextField()),
                ('facultad', models.TextField()),
                ('carrera', models.TextField()),
                ('descripcion', models.TextField()),
                ('fecha_creacion', models.DateTimeField(auto_now=True)),
                ('actualizacion', models.DateTimeField(auto_now_add=True, null=True)),
            ],
        ),
    ]