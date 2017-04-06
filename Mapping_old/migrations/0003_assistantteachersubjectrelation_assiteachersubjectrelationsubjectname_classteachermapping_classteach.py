# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-03-27 06:55
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Mapping', '0002_academicyearclassrelationclassid_classsectionmapping_classsectionmappingsectionname_classsubjectmapp'),
    ]

    operations = [
        migrations.CreateModel(
            name='AssistantteacherSubjectRelation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'assistantteacher_subject_relation',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='AssiteacherSubjectRelationSubjectName',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('assiteachersubjectrelation_id', models.IntegerField(blank=True, null=True)),
                ('subject_id', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'assiteacher_subject_relation_subject_name',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ClassTeacherMapping',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'class_teacher_mapping',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ClassTeacherMappingClassName',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('classteachermapping_id', models.IntegerField(blank=True, null=True)),
                ('classdetails_id', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'class_teacher_mapping_class_name',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='ClassTeacherMappingTeacherName',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('classteachermapping_id', models.IntegerField(blank=True, null=True)),
                ('staffdetails_id', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'class_teacher_mapping_teacher_name',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Nationality',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nationality_name', models.CharField(blank=True, max_length=45, null=True)),
            ],
            options={
                'db_table': 'nationality',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Religion',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('religion_name', models.CharField(blank=True, max_length=45, null=True)),
            ],
            options={
                'db_table': 'religion',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='StudentOptionalSubjectMapping',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'student_optional_subject_mapping',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='StudentOptionalSubjectMappingStudentName',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('studentoptionalsubjectmapping_id', models.IntegerField(blank=True, null=True)),
                ('studentdetails_id', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'student_optional_subject_mapping_student_name',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='StudentOptionalSubjectMappingSubjectName',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('studentoptionalsubjectmapping_id', models.IntegerField(blank=True, null=True)),
                ('subject_id', models.CharField(blank=True, max_length=45, null=True)),
            ],
            options={
                'db_table': 'student_optional_subject_mapping_subject_name',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='SupervisorClassRelation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
            ],
            options={
                'db_table': 'supervisor_class_relation',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='SupervisorClassRelationClassName',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('supervisorclassrelation_id', models.IntegerField(blank=True, null=True)),
                ('classdetails_id', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'supervisor_class_relation_class_name',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='TeacherSubjectRelationSubjectName',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('teachersubjectrelation_id', models.IntegerField(blank=True, null=True)),
                ('subject_id', models.IntegerField(blank=True, null=True)),
            ],
            options={
                'db_table': 'teacher_subject_relation_subject_name',
                'managed': False,
            },
        ),
    ]
