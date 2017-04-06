# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-03-27 06:55
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Registration', '0002_role'),
    ]

    operations = [
        migrations.CreateModel(
            name='AuthUser',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128)),
                ('last_login', models.DateTimeField(blank=True, null=True)),
                ('is_superuser', models.IntegerField()),
                ('username', models.CharField(max_length=150, unique=True)),
                ('first_name', models.CharField(max_length=30)),
                ('last_name', models.CharField(max_length=30)),
                ('email', models.CharField(max_length=254)),
                ('is_staff', models.IntegerField()),
                ('is_active', models.IntegerField()),
                ('date_joined', models.DateTimeField()),
            ],
            options={
                'db_table': 'auth_user',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='SecondaryParentDetails',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sec_parent_name', models.CharField(blank=True, max_length=45, null=True)),
                ('sec_parent_mail', models.CharField(blank=True, max_length=45, null=True)),
                ('sec_parent_contact', models.CharField(blank=True, max_length=45, null=True)),
                ('sec_parent_address', models.CharField(blank=True, max_length=45, null=True)),
                ('type', models.CharField(blank=True, max_length=45, null=True)),
            ],
            options={
                'db_table': 'secondary_parent_details',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='StudentMandatorySubjectMapping',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('student_id', models.IntegerField(blank=True, null=True)),
                ('subject_id', models.IntegerField(blank=True, null=True, unique=True)),
            ],
            options={
                'db_table': 'student_mandatory_subject_mapping',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='StudentMedical',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('blood_group', models.CharField(max_length=250)),
                ('height', models.CharField(max_length=250)),
                ('weight', models.CharField(max_length=250)),
                ('under_medication', models.CharField(max_length=250)),
                ('allergic', models.CharField(max_length=250)),
            ],
            options={
                'db_table': 'student_medical',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='SubjectSubStrands',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sub_strands', models.CharField(max_length=250)),
            ],
            options={
                'db_table': 'subject_sub_strands',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='SubjectSubStrands11',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sub_strands', models.CharField(max_length=250)),
            ],
            options={
                'db_table': 'subject_sub_strands',
                'managed': False,
            },
        ),
    ]