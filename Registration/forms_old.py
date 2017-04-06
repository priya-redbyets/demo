
from django import forms

from Registration.models import *
from Mapping.models import *

class loginForm(forms.Form):
    username = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control form-control-solid placeholder-no-fix' , 'placeholder':'Username','autocomplete': 'off'}))
    password = forms.CharField(required=True,widget=forms.PasswordInput(attrs={'class':'form-control form-control-solid placeholder-no-fix' , 'placeholder':'Password','autocomplete': 'off'}))

class StudentDetailsForm(forms.ModelForm):
    first_name = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    birth_date = forms.DateField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off' ,'type':'date'}))
    gender = forms.TypedChoiceField(
                   
                   choices=((False, 'Male'), (True, 'Female')),
                   widget=forms.RadioSelect
                )
    
    
    
    SchoolDetails=SchoolDetails.objects.all()
    ClassDetail = ClassDetails.objects.all()
    Sections = Sections.objects.all()
    ParentsDetails = ParentsDetails.objects.all()
    AcademicYear = AcademicYear.objects.all()
    
    
    Nationality = Nationality.objects.all()
    Religion = Religion.objects.all()
    
    
    
    student_enrollment_num = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    
    class_name = forms.ModelChoiceField(queryset = ClassDetail ,widget=forms.Select(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    mother_name = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    father_name = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    adress = forms.CharField(required=True,widget=forms.Textarea(attrs={'class':'form-control' , 'autocomplete': 'off','rows':'2'}))

    email = forms.CharField(required=True,widget=forms.EmailInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))

    

    school_name = forms.ModelChoiceField(queryset = SchoolDetails ,widget=forms.Select(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    
    last_name = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    photo =  forms.FileField(required=False,label='Upload Photo' )
   # section = forms.ModelChoiceField(queryset =  Sections  ,widget=forms.Select(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    
    section_name = forms.ModelChoiceField(required=True ,queryset = Sections ,widget=forms.Select(attrs={'class':'form-control' , 'autocomplete': 'off'}))

    
    joining_date = forms.DateField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off' ,'type':'date'}))
    academic_year = forms.ModelChoiceField(queryset = AcademicYear ,widget=forms.Select(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    parent_name = forms.ModelChoiceField(queryset = ParentsDetails ,widget=forms.Select(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    parent_mail = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    blood_group = forms.CharField(required=False,widget=forms.TextInput(attrs={'class':'form-control viewOnlyAccess' , 'autocomplete': 'off'}))
    height = forms.CharField(required=False,widget=forms.TextInput(attrs={'class':'form-control viewOnlyAccess' , 'autocomplete': 'off'}))
    weight = forms.CharField(required=False,widget=forms.TextInput(attrs={'class':'form-control viewOnlyAccess' , 'autocomplete': 'off'}))
    under_medication = forms.CharField(required=False,widget=forms.TextInput(attrs={'class':'form-control viewOnlyAccess' , 'autocomplete': 'off'}))
    allergic = forms.CharField(required=False,widget=forms.TextInput(attrs={'class':'form-control viewOnlyAccess' , 'autocomplete': 'off'}))
#      photo =  forms.FileField( label='Upload Photo' )
# model = StudentDetails
    
    nationality_name = forms.ModelChoiceField(queryset = Nationality ,widget=forms.Select(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    religion_name = forms.ModelChoiceField(queryset = Religion ,widget=forms.Select(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    #nationality= forms.CharField(required=False,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    #religion= forms.CharField(required=False,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    class Meta:
        model = StudentDetails
        fields =['first_name','birth_date','gender','student_enrollment_num','class_name','mother_name','father_name','adress',
                 'email','school_name','last_name','photo','section_name','joining_date','academic_year','parent_name',
                 'parent_mail' , 'blood_group','height','weight','under_medication','allergic','nationality_name','religion_name']
      
        
     
class StaffDetailsForm(forms.ModelForm):
  
    first_name = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    birth_date = forms.DateField(required=False,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off' ,'type':'date'}))
    gender = forms.TypedChoiceField(
                   
                   choices=((False, 'Male'), (True, 'Female')),required=False,
                   widget=forms.RadioSelect
                )
    SchoolNames=SchoolDetails.objects.all()
    photo =  forms.FileField( label='Upload Photo' )
    DepartmentNames= DepartmentDetails.objects.all()
    is_active = forms.CharField(required=False,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    role_type = forms.CharField(required=False,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    contact_num = forms.CharField(required=False,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off','onkeypress':'return isNumber(event)', 'maxlength':'11'}))
    adress = forms.CharField(required=False,widget=forms.Textarea(attrs={'class':'form-control' , 'autocomplete': 'off','rows':'2'}))
    email = forms.CharField(required=True,widget=forms.EmailInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
#     school = forms.CharField(required=True,widget=forms.TextInput(attrs={ 'class':'form-control' }))
    school = forms.ModelChoiceField(queryset = SchoolNames,required=False, widget=forms.Select(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    department = forms.ModelChoiceField(queryset = DepartmentNames,required=False, widget=forms.Select(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    middle_name = forms.CharField(required=False,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    last_name = forms.CharField(required=False,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    password=forms.CharField(required=True,widget=forms.PasswordInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    #===========================================================================
    # upload_id_doc = forms.FileField(label='upload_id_doc', required=True,widget=forms.FileInput(attrs={'multiple':True }))
    #===========================================================================

    class Meta:
            model = StaffDetails
            fields =['photo','email', 'first_name','school','department', 'middle_name','last_name', 'contact_num', 'birth_date', 'role_type', 'adress', 'gender', 'is_active','password']



class SubjectDetailsForm(forms.ModelForm):
    
#     ClassDetails = ClassDetails.objects.all()
    subject = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    code = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    #===========================================================================
    # type = forms.ModelChoiceField(queryset = ClassDetails ,widget=forms.Select(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    #===========================================================================
    class Meta:
        model = Subject
        fields =['subject', 'code', 'type']

        

class AcademicDetailsForm(forms.ModelForm):
    academic_year = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    academic_yearcode = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
#name = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    start_date = forms.DateField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off' ,'type':'date'}))
    end_date = forms.DateField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off' ,'type':'date'}))
    
     
    class Meta:
        model = AcademicDetails
        fields =['academic_year','academic_yearcode','start_date','end_date']
        
#      def clean_start_date(self):
#       start_date = self.cleaned_data['start_date']
#       end_date = self.data.get('end_date')
#       if start_date > end_date :
#           raise forms.ValidationError("Start date should be before end date.")
#       return start_date
    def clean(self):
        try: 
            form_fromdate = self.cleaned_data.get('start_date')
            form_todate = self.cleaned_data.get('end_date')
            between = AcademicDetails.objects.filter(start_date__lte=form_todate, end_date__gte=form_fromdate).exists()
            if between:
                raise forms.ValidationError("Period already between this dates")
                print "between"
#             if ((AcademicDetails.objects.filter(start_date=self.cleaned_data['start_date']))
#                 and (AcademicDetails.objects.filter(end_date=self.cleaned_data['end_date']))):
#                 print "date"
#                 raise forms.ValidationError("Exists already!")
             
            if (AcademicDetails.objects.get(academic_yearcode=self.cleaned_data['academic_yearcode'])):
                print "code"
                raise forms.ValidationError("Exists already!")
             
        except AcademicDetails.DoesNotExist:
                pass
                return self.cleaned_data
     
class ClassDetailsForm(forms.ModelForm):
     class_name = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
     schoolDetails=SchoolDetails.objects.all()
     #school = forms.ModelChoiceField(queryset = schoolDetails ,widget=forms.Select(attrs={'class':'form-control' , 'autocomplete': 'off'}))
     class_code=forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
     # academicDetails=AcademicDetails.objects.all()
     # academic_year=forms.ModelChoiceField(queryset = academicDetails ,widget=forms.Select(attrs={'class':'form-control' , 'autocomplete': 'off'}))
     
     class Meta:
        model = ClassDetails
        fields =['class_name','class_code']  




class AttendanceForm(forms.ModelForm):
    #section = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    ClassDetails = ClassDetails.objects.all()
    class_name = forms.ModelChoiceField(queryset = ClassDetails ,widget=forms.Select(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    section = Sections.objects.all()
    section_name = forms.ModelChoiceField(queryset = section ,widget=forms.Select(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    #section_code = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    
    class Meta:
        model = Sections
        fields =['class_name','section']
        

      
      
class UserDetailsForm(forms.ModelForm):
    user_name = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    email_id = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    password = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
#created_date = forms.DateField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off' ,'type':'date'}))
#updated_date = forms.DateField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off' ,'type':'date'}))    
    class Meta:
        model = UserDetails
        fields =['user_name','email_id','password']

class SectionsForm(forms.ModelForm):
    section = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    ClassDetails = ClassDetails.objects.all()
    section_code = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    
    class Meta:
        model = Sections
        fields =['section','section_code']
        
class SchoolDetailsForm(forms.ModelForm):
    
    school_name = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    school_address = forms.CharField(required=True,widget=forms.Textarea(attrs={'class':'form-control' , 'autocomplete': 'off','rows':'2'}))
    contact_num = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    email = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    logo = forms.FileField( label='Upload Photo' )
    website = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    class Meta:
        model = SchoolDetails
        fields =['school_name','school_address','contact_num','email','website','logo']


class ParentsDetailsForm(forms.ModelForm):
    name = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    contact_num = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    birth_date = forms.DateField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off' ,'type':'date'}))
    gender = forms.TypedChoiceField(
                   
                   choices=((False, 'Male'), (True, 'Female')),
                   widget=forms.RadioSelect
                )
    
    address = forms.CharField(required=True,widget=forms.Textarea(attrs={'class':'form-control' , 'autocomplete': 'off','rows':'2'}))
    emai_id = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    
    middle_name = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    last_name = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    
#      photo =  forms.FileField( label='Upload Photo' )
# model = StudentDetails
    class Meta:
        model = ParentsDetails
        fields =['name','birth_date','gender','address','emai_id','middle_name','last_name','contact_num']

class RoleDetailsForm(forms.ModelForm):
    role = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    
    class Meta:
        model = Role
        fields =['role']
class SecondaryParentDetailsForm(forms.ModelForm): 
    mytype = (('select','select' ), ('parent','parent') ,('guardian','guardian'))
    sec_parent_name = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control col-6 col-sm-3' , 'autocomplete': 'off'}))
    sec_parent_mail = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control col-6 col-sm-3' , 'autocomplete': 'off'}))
    sec_parent_contact = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control col-6 col-sm-3' , 'autocomplete': 'off'}))
    sec_parent_address = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control col-6 col-sm-3' , 'autocomplete': 'off'}))
    type = forms.ChoiceField(required=False,choices = mytype , widget=forms.Select(attrs={'class':'form-control col-6 col-sm-3'}))
    class Meta:
        model = SecondaryParentDetails
        fields =['sec_parent_name','sec_parent_mail','sec_parent_contact','sec_parent_address','type']

class ClassSection(forms.ModelForm):
     
    SectionDetail = Sections.objects.all()
    ClassDetail = ClassDetails.objects.all()
    
    class_name = forms.ModelChoiceField(required=True , queryset = ClassDetail ,widget=forms.Select(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    section_name = forms.ModelChoiceField(required=True ,queryset = SectionDetail ,widget=forms.Select(attrs={'class':'form-control' , 'autocomplete': 'off'}))
  
  
    class Meta:
        model = StudentMedical
        fields =['class_name','section_name']


class MedicalForm(forms.ModelForm):
    #section = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
   
    blood_group = forms.CharField(required=False,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    height = forms.CharField(required=False,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    weight = forms.CharField(required=False,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    under_medication = forms.CharField(required=False,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    allergic = forms.CharField(required=False,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    
    
    #section_code = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off'}))
    #birth_date = forms.DateField(required=True,widget=forms.TextInput(attrs={'class':'form-control' , 'autocomplete': 'off' ,'type':'date'}))
    
    class Meta:
        model = StudentMedical
        fields =['blood_group','height','weight','under_medication','allergic']

class SubjectSubStrands(forms.ModelForm): 
    
    sub_strands = forms.CharField(required=True,widget=forms.TextInput(attrs={'class':'form-control col-6 col-sm-3' , 'autocomplete': 'off'}))
    
    class Meta:
        model = SubjectSubStrands11
        fields =['sub_strands']




    
