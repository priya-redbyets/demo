from __future__ import unicode_literals
import os
from datetime import datetime
from django.db import models
import time

class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.IntegerField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=30)
    last_name = models.CharField(max_length=30)
    email = models.CharField(max_length=254)
    is_staff = models.IntegerField()
    is_active = models.IntegerField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'

def content_file_name_doc(instance, filename):
    dirname = int(time.time())
    ext = filename.split('.')[-1]
    filename = "%s_%s.%s" % (instance.document_type, dirname, ext)
    return os.path.join('doc', filename)

def content_file_name_school(instance, filename):
    dirname = int(time.time())
    ext = filename.split('.')[-1]
    filename = "%s_%s.%s" % (instance.school_name, dirname, ext)
    return os.path.join('doc', filename)


class AcademicYear(models.Model):
    academic_year = models.CharField(max_length=45, blank=True, null=True)
    created_date = models.DateField(blank=True, null=True)
    updated_date = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'academic_year'
    def __unicode__(self):
        return self.academic_year
    
class DepartmentDetails(models.Model):
    depatment_name = models.CharField(max_length=45, blank=True, null=True)
    created_date = models.DateField(blank=True, null=True)
    updated_date = models.DateField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'department_details'
        
    def __unicode__(self):
        return self.depatment_name    
            

class SchoolDetails(models.Model):
    
    school_name = models.CharField(max_length=250)
    school_address = models.CharField(max_length=250)
    contact_num = models.CharField(max_length=250)
    email = models.CharField(max_length=250)
    logo = models.FileField(upload_to=content_file_name_school)
    created_date = models.DateTimeField()
    updated_date = models.DateTimeField(blank=True, null=True)
    website = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'school_details'

        
    def __unicode__(self):
        return self.school_name

 
def content_file_name(instance, filename):
    dirname = datetime.now().strftime('%Y.%m.%d.%H.%M.%S')
    ext = filename.split('.')[-1]
    filename = "%s_%s.%s" % (instance.first_name, dirname, ext)
    return os.path.join('images', filename)
   
class AcademicDetails(models.Model):
    academic_year = models.CharField(max_length=45, blank=True, null=True)
    created_date = models.DateField(blank=True, null=True)
    updated_date = models.DateField(blank=True, null=True)
    academic_yearcode = models.CharField(max_length=15, blank=True, null=True,default=False)
    start_date = models.DateField(blank=True, null=True)
    end_date = models.DateField(blank=True, null=True)
    #name = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'academic_year'

    
    def __unicode__(self):
        return self.academic_year
    
    
   
  
class ClassDetails(models.Model):
    class_name = models.CharField(max_length=250)
    is_active = models.CharField(max_length=1)
    school = models.ForeignKey('SchoolDetails',  on_delete=models.CASCADE)
    created_date = models.DateTimeField()
    updated_date = models.DateTimeField()
    class_code = models.CharField(max_length=45, blank=True, null=True)
    #academic_year = models.ForeignKey(AcademicDetails,  on_delete=models.CASCADE, db_column='academic_year', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'class_details'
        
    def __unicode__(self):
        return self.class_name

class Sections(models.Model):
    section = models.CharField(max_length=250)
    is_active = models.CharField(max_length=1)
    #class_name = models.ForeignKey(ClassDetails, models.DO_NOTHING, db_column='class_name')  # Field renamed because it was a Python reserved word.
    created_date = models.DateTimeField()
    updated_date = models.DateTimeField()
    #academic_year = models.ForeignKey(AcademicYear,  on_delete=models.CASCADE, db_column='academic_year', blank=True, null=True)
    section_code = models.CharField(max_length=45, blank=True, null=True)
    class Meta:
        managed = False
        db_table = 'sections'
        
     
    def __unicode__(self):
        return self.section
    
            
class ParentsDetails(models.Model):
    name = models.CharField(max_length=250)
    birth_date = models.DateField()
    gender = models.CharField(max_length=250)
    address = models.CharField(max_length=250)
    emai_id = models.CharField(max_length=250)
    contact_num = models.CharField(max_length=250)
    is_active = models.CharField(max_length=1)
    created_date = models.DateTimeField()
    updated = models.DateTimeField()
    middle_name = models.CharField(max_length=45, blank=True, null=True)
    last_name = models.CharField(max_length=45, blank=True, null=True)
    

    class Meta:
        managed = False
        db_table = 'parents_details'
    def __unicode__(self):
        return self.name


class Nationality(models.Model):
    nationality_name = models.CharField(max_length=250)

    class Meta:
        managed = False
        db_table = 'nationality'

     
    def __unicode__(self):
        return self.nationality_name

class Religion(models.Model):
    religion_name = models.CharField(max_length=250)

    class Meta:
        managed = False
        db_table = 'religion'

     
        
    def __unicode__(self):
        return self.religion_name

 
        
        
        
class StudentDetails(models.Model):
    first_name = models.CharField(max_length=250)
    birth_date = models.DateField()
    gender = models.CharField(max_length=250)
    student_enrollment_num = models.CharField(max_length=250)
    class_name = models.ForeignKey(ClassDetails, models.DO_NOTHING, db_column='class_name')
    mother_name = models.CharField(max_length=250)
    father_name = models.CharField(max_length=250)
    adress = models.CharField(max_length=250)
    email = models.CharField(max_length=250)
    photo = models.FileField(upload_to=content_file_name)
    school_name = models.ForeignKey(SchoolDetails, models.DO_NOTHING, db_column='school_name')
    is_active = models.CharField(max_length=1)
    created_date = models.DateTimeField()
    updated_date = models.DateTimeField()
    last_name = models.CharField(max_length=45)
    joining_date = models.DateField(blank=True, null=True)
    academic_year = models.ForeignKey(AcademicYear, models.DO_NOTHING, db_column='academic_year', blank=True, null=True)
    section = models.ForeignKey(Sections, models.DO_NOTHING, db_column='section', blank=True, null=True)
    parent_name = models.ForeignKey(ParentsDetails, models.DO_NOTHING, db_column='parent_name', blank=True, null=True)
    parent_mail = models.CharField(max_length=250, blank=True, null=True)
    blood_group = models.CharField(max_length=250)
    height = models.CharField(max_length=250)
    weight = models.CharField(max_length=250)
    under_medication = models.CharField(max_length=250)
    allergic = models.CharField(max_length=250)
    nationality = models.ForeignKey(Nationality, models.DO_NOTHING, db_column='nationality', blank=True, null=True)
    religion = models.ForeignKey(Religion, models.DO_NOTHING, db_column='religion', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'student_details'





    def __unicode__(self):
        return self.first_name



class StudentMedical(models.Model):
    student = models.ForeignKey(StudentDetails, models.DO_NOTHING, blank=True, null=True)
    blood_group = models.CharField(max_length=250)
    height = models.CharField(max_length=250)
    weight = models.CharField(max_length=250)
    under_medication = models.CharField(max_length=250)
    allergic = models.CharField(max_length=250)

    class Meta:
        managed = False
        db_table = 'student_medical'


class StaffDetails(models.Model):
    email = models.CharField(max_length=250)
    first_name = models.CharField(max_length=250)
    middle_name = models.CharField(max_length=250)
    last_name = models.CharField(max_length=250)
    contact_num = models.CharField(max_length=250)
    birth_date = models.DateField()
#     upload_id_doc = models.FileField(upload_to=content_file_name_doc)
    adress = models.CharField(max_length=250)
    gender = models.CharField(max_length=250)
    school = models.ForeignKey(SchoolDetails, on_delete=models.CASCADE)
    is_active = models.CharField(max_length=1)
    department = models.ForeignKey(DepartmentDetails, on_delete=models.CASCADE)
    created_date = models.DateTimeField()
    updated_date = models.DateTimeField()
    role_type = models.CharField(max_length=250)
    password = models.CharField(max_length=45)
    photo = models.FileField(upload_to=content_file_name)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING, blank=True, null=True)



    
    class Meta:
        managed = False
        db_table = 'staff_details' 
        
    def __unicode__(self):
        return self.email   
      
        
class StaffDocument(models.Model):
    staff = models.ForeignKey(StaffDetails, models.DO_NOTHING)
    document_type = models.CharField(max_length=45)
    document_path = models.FileField(upload_to=content_file_name_doc)

    class Meta:
        managed = False
        db_table = 'staff_document'

                

class Subject(models.Model):
    subject = models.CharField(max_length=250)
    is_active = models.CharField(max_length=1)
    type = models.CharField(max_length=100)
    created_date = models.DateTimeField()
    updated_date = models.DateTimeField()
    code = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'subject'
    
  
    
    def __unicode__(self):
        return self.subject


class SubjectSubStrands(models.Model):
    subject_name = models.ForeignKey(Subject, models.DO_NOTHING, db_column='subject_name')
    sub_strands = models.CharField(max_length=250)

    class Meta:
        managed = False
        db_table = 'subject_sub_strands'

    def __unicode__(self):
        return self.sub_strands



class UserDetails(models.Model):
    user_name = models.CharField(max_length=250)
    email_id = models.CharField(max_length=250)
    password = models.CharField(max_length=250)
    created_date = models.DateTimeField()
    updated_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'user_details'


    
class StudentClassSubjectRelation(models.Model):
    student_id = models.IntegerField(blank=True, null=True)
    class_id = models.IntegerField(blank=True, null=True)
    subject_id = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'student_class_subject_relation'
 
class Role(models.Model):
    role = models.CharField(max_length=250)
    created_date = models.DateTimeField()
    updated_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'role'    
        
    def __unicode__(self):
        return self.role      

class SecondaryParentDetails(models.Model):
    sec_parent_name = models.CharField(max_length=45, blank=True, null=True)
    sec_parent_mail = models.CharField(max_length=45, blank=True, null=True)
    sec_parent_contact = models.CharField(max_length=45, blank=True, null=True)
    sec_parent_address = models.CharField(max_length=45, blank=True, null=True)
    parent = models.ForeignKey(ParentsDetails, models.DO_NOTHING, blank=True, null=True)
    type = models.CharField(max_length=45, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'secondary_parent_details'




class StudentMandatorySubjectMapping(models.Model):
    student_id = models.IntegerField(blank=True, null=True)
    subject_id = models.IntegerField(blank=True, null=True,unique=True)

    class Meta:
#         unique_together = ("student_id", "subject_id")
        managed = False
        db_table = 'student_mandatory_subject_mapping'


class SubjectSubStrands11(models.Model):
    subject_name = models.ForeignKey(Subject, models.DO_NOTHING, db_column='subject_name')
    sub_strands = models.CharField(max_length=250)

    class Meta:
        managed = False
        db_table = 'subject_sub_strands'

    def __unicode__(self):
        return self.sub_strands


class MedicalDetailsExcel(models.Model):
    excel = models.FileField(upload_to = 'uploads/')

    class Meta:
        managed = False
        db_table = 'medical_details_excel'



       
