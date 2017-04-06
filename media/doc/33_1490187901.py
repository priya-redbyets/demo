from django.shortcuts import render ,redirect,render_to_response
from django.http import QueryDict
from django.contrib.auth import authenticate, login ,logout
from django.contrib.auth import login as auth_login
from Registration import forms
from .forms import *
from django.template import RequestContext
from django.contrib.auth.decorators import login_required
from django.forms.formsets import formset_factory
from django.http import HttpResponse
from django.contrib import messages
from Mapping.models import *
from django.forms.models import model_to_dict, inlineformset_factory
from string import count
from django.template.context_processors import request
from django.contrib.admin import actions
from Registration.models import StudentDetails , ClassDetails,StudentClassSubjectRelation
from Registration.models import StaffDetails
from django.http.request import HttpRequest
from django.core.files.storage import FileSystemStorage
from django.http import HttpResponse
from django.views.generic import TemplateView,ListView
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.core.urlresolvers import reverse_lazy
from django.contrib import messages
from django.http import JsonResponse
from django.http import HttpResponseRedirect
from django.db.transaction import commit
from django.contrib.auth.models import User
from django.contrib.auth.models import Group

from django.core.mail import EmailMessage
from django.template import Context
from django.template.loader import render_to_string, get_template
from django.core.mail import send_mail
from django.core.mail import get_connection, EmailMultiAlternatives
import hashlib
import random
from django.conf import settings
from schoolzenproj import settings

from Mapping import forms
from .forms import *


# Create your views here.
roleId = None
studentId = None
@login_required
def home(request):
  
    
    return render(request, "index.html", {})

 
def Login(request):
    
    form = loginForm()
     
    return render(request, "login_1.html" , {'form':form})
        

def Login_Succes(request): 
 form = loginForm()
 StaffDetails1 = StaffDetailsForm(request.POST)
 try:
    if request.method == 'POST':
          username = request.POST.get('username')
          
          password = request.POST.get('password')
          
          print 'username',username
          print 'Passsword',password
          
          if (StaffDetails.objects.filter(email=username).exists()):
              
            if not (User.objects.filter(username=username).exists()):
              
             User.objects.create_user(username,'',password)
            
          user = authenticate(username =username, password=password)
            #print "form.is_valid():",StaffDetails.is_valid()
          
          if user is not None:
            if user.is_active:
                   
                
#                 logger.debug("User is active")
#                 request.session['user']=user.username
                userId = user.id
                print "userId userId userId userId ",userId 
                StaffDetail = StaffDetails.objects.get(user = userId)
                print "StaffDetailStaffDetailStaffDetail",StaffDetail.role_type
                roleId = StaffDetail.role_type
                request.session['roleId1'] = roleId
                auth_login(request, user)
                login(request, user)
                
                return render(request,'home.html', {'user':user,'roleId':roleId})
                #return redirect('/home/')
                #return render(request,'index.html', {'user':user})

            else:
#                 logger.debug("User is not active")
                 
                return render(request,'login_1.html', {'context1': "User is not active" , 'form':form})

         
          else:
#               logger.debug("Unknown User")
#               print "in login2"
              return render(request,'login_1.html', {'context1': "Enter Valid  User Name and Password" , 'form':form})
    else:
#           print"in login 3"
          return render(request,'login_1.html')
      
          
 except Exception as e:
#         print("in sxception",e)
        return render(request,'login_1.html',{'context1':'not done' , 'form':form}) 
        
@login_required
def AddStudent(request):
#     print "in student class"
#     
    StudentForm = StudentDetailsForm()    
    
    return render(request, "registration.html" ,{'StudentDetailsForm':StudentForm }) 


def SaveStudent(request):
#     print"in save student"
    if request.method=='POST':
#         print("within POST")
        modelDict=[]
        StudentDetails = StudentDetailsForm(request.POST,request.FILES)
        
        
       
#         print ("errors",StudentDetails.errors)
        
            
#         p = Person.objects.create(first_name="Bruce", last_name="Springsteen")
        if StudentDetails.is_valid():
           
#             print ("form is valid")
           
            StudentDetails_obj = StudentDetails.save(commit=False)
            StudentDetails_obj.is_active = 0
            StudentDetails_obj.save()
            print "StudentDetailsStudentDetailsidididididid",StudentDetails_obj.id
            print "StudentDetailsStudentDetails class_name class_name class_name",StudentDetails_obj.class_name.id
            StudentID = StudentDetails_obj.id
            StudentClassId = StudentDetails_obj.class_name.id
            ClassSubjectMapp = ClassSubjectMapping.objects.filter(class_name = StudentClassId)
            for obj in ClassSubjectMapp:
                print"ClassSubjectMapp ClassSubjectMapp ClassSubjectMapp id",obj.id
                ClassSubjectMappId = obj.id
                ClassSubjectMappingSubjectName_0bj = ClassSubjectMappingSubjectName.objects.filter(classsubjectmapping_id = ClassSubjectMappId)
                for obj in ClassSubjectMappingSubjectName_0bj:
                  print "ClassSubjectMappingSubjectName_0bj_subject_id",obj.subject_id
                  for obj in ClassSubjectMappingSubjectName_0bj:
                    SubjectId = obj.subject_id
                    print "SubjectIdSubjectIdSubjectIdSubjectId",SubjectId
                    subject = Subject.objects.filter(id=SubjectId).filter(type="Mandatory")
                    print"subjecsubjectsubjectsubjectsubjectsubject",subject
                    for object in subject:
                     
                       if object not in modelDict:
                         print "SubjectIdSubjectIdSub..................jectIdSubjectId",object.id
                         modelDict.append(object)
                         
            print"modelDictmodelDictmodelDictmodelDictmodelDict",modelDict
            for studentsubjectmapp in modelDict:
                 p = StudentMandatorySubjectMapping(student_id=StudentID, subject_id=studentsubjectmapp.id)
                
                 p.save()        
        
        
           
#                         
#                         
#            print StudentDetails_obj.id
        return redirect('/school/student_details/')   



def Home(request):    
#    studentList = StudentDetails.objects.all()
#     print 'studentList',studentList
#     print "in hme...gggg......"
    roleId = request.session['roleId1']
    print"roleIdroleIdroleIdroleId",roleId
    return render(request, "home.html", {'roleId':roleId})


def ManageUser(request):    
#    studentList = StudentDetails.objects.all()
#     print 'studentList',studentList
#     print "in hme...gggg......"
    return render(request, "manage_user.html", {})

def AcademicSchoolView(request):    
#    studentList = StudentDetails.objects.all()
#     print 'studentList',studentList
#     print "in hme...gggg......"
    roleId = request.session['roleId1']
    print"roleIdroleIdroleIdroleId",roleId
    return render(request, "academic_school.html",{'roleId':roleId})



def DashbordView(request):    
#    studentList = StudentDetails.objects.all()
#     print 'studentList',studentList
#     print "in hme...gggg......"
    return render(request, "dashbord_view.html", {})


def ProfileView(request):    
#    studentList = StudentDetails.objects.all()
#     print 'studentList',studentList
#     print "in hme...gggg......"
    roleId = request.session['roleId1']
    print"roleIdroleIdroleIdroleId",roleId
    return render(request, "profile_view.html",{'roleId':roleId})
#

def AssignRole(request):    
#    studentList = StudentDetails.objects.all()
#     print 'studentList',studentList
#     print "in hme...gggg......"
    return render(request, "role_view.html", {})
       


def AddAttendance(request):
    # print "in Section"
    AttendanceForm1 = AttendanceForm()    
  #  academicyr= AcademicDetails.objects.all()  
    return render(request, "add_attendance.html" ,{'attendancedetails1':AttendanceForm1})


def viewSectionRelation(request):
    sectionList = None
  #  print "in view secre"
    modelDict=[]
    class_name = request.GET.get('class_name',None)
    print ">>>>>>>>>>>>>", class_name
    
    class_obj = ClassDetails.objects.filter(id = class_name)

    for object in class_obj:
      
      class_id = object.id
      print"class_id",class_id
    
    classList = ClassSectionRelation.objects.filter(class_field = class_id)
    print"classList",classList
    
    for obj in classList:
        
        section_id=obj.section.id
        
        print "section_id",section_id
        
        Sections_obj = Sections.objects.filter(id = section_id)
        
        
        print "Sections_obj",Sections_obj
        
        for obj1 in Sections_obj:
        
            modelDict.append(model_to_dict(obj1)) 
           
        
    return JsonResponse(modelDict,safe=False)
       


      
def AcademicYrDetail(request):
    academicList = AcademicDetails.objects.all()
   
    return render(request, "academic_details.html", {'academicList':academicList}) 

def AddAcademicYr(request):
#     print "in Academic Year"
    AcademicForm = AcademicDetailsForm()    
    return render(request, "academicyear.html" ,{'AcademicDetailsForm':AcademicForm}) 

def SaveAcdemicYr(request):
#     print "in Save Academic Year"
    action_type= request.POST.get('action_type')
    
    if request.method=='POST':
#         print("within POST")
        AcademicDetails = AcademicDetailsForm(request.POST)
#         print ("errors",AcademicDetails.errors)
        
            #leasein_form_obj = None
        
        if AcademicDetails.is_valid():
#           print ("form is valid")
#           print AcademicDetails
          AcademicDetails.save()
          messages.success(request, "One record added successfully")
        else:
          
          messages.success(request, "record already Exists")
          return render(request, "academicyear.html",{'AcademicDetailsForm':AcademicDetails})
        return redirect('/school/academic_details/')     
        
def UpdateAcademicYr(request, year_id):
    
#     print "In Update " 
#     print year_id
    academicyrdetails1 = AcademicDetails.objects.get(pk=year_id)
    academicyrdetails1.start_date= academicyrdetails1.start_date.strftime('%Y-%m-%d')
    academicyrdetails1.end_date= academicyrdetails1.end_date.strftime('%Y-%m-%d')
    #academicyr = AcademicDetails.objects.all()
    #return render(request, "class_update.html" ,{'classdetails1':classdetails1}) 
    return render(request, "academicyear_update.html" ,{'AcademicDetailsForm':academicyrdetails1}) 
 
def SaveUpdatedAcademicYr(request):
#     print 'update'
    #print "class_id :", request.POST['class_id']
    
    if(request.method=='POST'):
#         print "with in post"
      AcademicDetail = AcademicDetailsForm(request.POST)
#     print ("errors",AcademicDetail.errors)
#     
    if AcademicDetail.is_valid():
         print ("form is valid")  
    
    
    year_id= request.POST['year_id']
    academicyrobj=AcademicDetails.objects.get(pk=year_id)
    academicyrobj.academic_yearcode = request.POST['academic_yearcode']
    academicyrobj.academic_year = request.POST['academic_year']
   
    academicyrobj.start_date = request.POST['start_date']
    academicyrobj.end_date = request.POST['end_date']
    academicyrobj.save()
    messages.success(request, "One record updated successfully")
    return redirect('/school/academic_details/')  

def DeleteAcademicYr(request, year_id):
    
#     print "In delete " 
    #messages.error(request, 'Are you sure you want to delete.')
    messages.success(request, "record deleted successfully")
    AcademicDetails.objects.filter(id=year_id).delete()
    return redirect('/school/academic_details/') 
 
def ClassDetail(request):
    classList1 = ClassDetails.objects.all()
    roleId = request.session['roleId1']
    print"roleIdroleIdroleIdroleId",roleId
#     print 'classList',classList1
    return render(request, "class_details.html", {'classList':classList1 , 'roleId':roleId}) 
      
def AddClass(request):
#     print "in class"
    ClassForm = ClassDetailsForm()    
    #academicyr= AcademicDetails.objects.all()  
    return render(request, "class.html" ,{'ClassDetailsForm':ClassForm}) 

def SaveClass(request):
#     print "in Save class"
    action_type= request.POST.get('action_type')
    
    if request.method=='POST':
#         print("within POST")
        ClassDetails = ClassDetailsForm(request.POST)
        #academicyr = AcademicDetails.objects.all()
#         print ("errors",ClassDetails.errors)
#         
            #leasein_form_obj = None
        
        if ClassDetails.is_valid():
#             print ("form is valid")
           
            ClassDetails_obj = ClassDetails.save(commit=False)
            ClassDetails_obj.is_active = 0
            SchoolDetails_obj=SchoolDetails.objects.get(id=1)
            ClassDetails_obj.school=SchoolDetails_obj
            ClassDetails_obj.save()
            messages.success(request, "One record added successfully")
        else:
            ClassDetails = ClassDetailsForm()
            return render(request, "class.html" ,{'ClassDetailsForm':ClassDetails_obj}) 
        return redirect('/school/class_details/')  
      
def UpdateClass(request, class_id):
    

    
    ClassDetails_obj = ClassDetails.objects.get(id = class_id)
    roleId = request.session['roleId1']
    print"roleIdroleIdroleIdroleId",roleId
    
    return render(request, "class_update.html" ,{'ClassDetailsForm':ClassDetails_obj , 'roleId':roleId}) 

def SaveUpdatedClass(request):
#     print 'update'
    
    print 'update'
    
    if(request.method=='POST'):
        print "with in post"
        
    ClassDetail = ClassDetailsForm(request.POST)
    print ("errors",ClassDetail.errors)
    
    if ClassDetail.is_valid():
        print ("form is valid")  
    print request.POST 
    class_id= request.POST['class_id']
    classobj=ClassDetails.objects.get(pk=class_id)
    classobj.class_name = request.POST['class_name']
    classobj.class_code = request.POST['class_code']
    #classobj.academic_year = AcademicDetails.objects.get(pk=request.POST['academic_year'])
    classobj.save()
    messages.success(request, "Class successfully updated")
    return redirect('/school/class_details/')                         

          
def DeleteClass(request, class_id):
    
#     print "In delete " 
    #messages.error(request, 'Are you sure you want to delete.')
    messages.success(request, "record deleted successfully")
    ClassDetails.objects.filter(id=class_id).delete()
    return redirect('/school/class_details/')



def AddStaff(request):
#     print "in staff class"
    StaffDetails = StaffDetailsForm()
    schools= SchoolDetails.objects.all()  
    roles= Role.objects.all()

    return render(request, "staff_registration.html" ,{'StaffDetailsForm':StaffDetails, 'schools':schools,'roles':roles }) 

def ViewStaff(request):
#     print "in view staff class"
    StaffList = StaffDetails.objects.filter(is_active = 0)

    return render(request, "stafflist.html" ,{'StaffList':StaffList}) 

def ViewSubject(request):
#     print "in view subject class"
    Subjectlist = Subject.objects.all()
 
    return render(request, "subject_view.html" ,{'Subjectlist':Subjectlist}) 



def SaveStaff(request):
     print"in save staff"
     registered = False
     print("i am here")
     if request.method=='POST':
 #         print("within POST")
         StaffDetail = StaffDetailsForm(request.POST, request.FILES)
         try:
                       
                 user_exists = StaffDetails.objects.get(email=request.POST['email'])
                 staff_form = StaffDetailsForm()
                
             
                 context= RequestContext(request,{
                                                     'StaffDetailsForm': staff_form,
                                                     'exist': 'Email Already Exist',
                                                     'registered': registered})
                       
                
          
                 messages.success(request, "Email ID already Exists")
         
                 return render(request, "staff_registration.html",{'StaffDetailsForm':StaffDetail}) 
             
             
         except:   
          if StaffDetail.is_valid():
             StaffDetails_obj = StaffDetail.save(commit=False)
             StaffDetails_obj.email=StaffDetail.cleaned_data['email']
             username=StaffDetail.cleaned_data['email']
             
             salt = hashlib.sha1(str(random.random())).hexdigest()[:5]
             usernamesalt = username
             print "nameeeee",salt
             if isinstance(usernamesalt, unicode):
                usernamesalt = usernamesalt.encode('utf8')
                activation_key= hashlib.sha1(salt+usernamesalt).hexdigest()
#              StaffDetails_obj= StaffDetails.objects.all().last()
#               StaffDetails_obj.activation_key = activation_key
             StaffDetails_obj.password=salt
             StaffDetails_obj.is_active = 0
             StaffDetails_obj.role_type=None
             StaffDetails_obj.save()
             StaffDetails_obj.activation_key = activation_key
             files = request.FILES.getlist('upload_id_doc')
                 
             for a_file in files:
                     
                        StaffDocument(staff=StaffDetails_obj,document_type =StaffDetails_obj.id, document_path=a_file).save()
                        
                        registered = True
             user = StaffDetails(
                 email = StaffDetail.cleaned_data['email'],
                 first_name = StaffDetail.cleaned_data['first_name'],
                )  
             user.password=(StaffDetail.cleaned_data['password'])
             user.username= user.email   
             ctx={'email': user.email, 'name':user.first_name, 'activation_key': activation_key,'password':user.password}
             print "ctxxxxxx",ctx
             data = {}
             template = get_template('register_email.html')
             html  = template.render(Context(data))
             subject=' Successful registration'
             html_content = render_to_string('register_email.html', ctx)
             text_content = "..."                                      
             to=[user.email]
             from_email=settings.EMAIL_HOST_USER
             send_mail(subject,"",from_email,to,fail_silently=True, html_message=html_content)
             ctx['email']
             return render_to_response('register_success.html/', ctx)

def activation(request, key):
    activation_expired = False
    already_active = False
    profil = get_object_or_404(StaffDetails, activation_key=key)
    if profil.user.is_active == False:
        
        profil.user.is_active = True
        profil.user.save()

    else:
        already_active = True #Display : error message
    return render(request, '/school/activation.html')
      
def Deactivate(request):
#     print "in deactivate ...."
    action_type= request.POST.get('action_type')
     
    if(request.method=='POST'):
         print "with in post"
         
    return redirect('/school/view_staff/')     
      
def Delete_Staff(request, staff_id):    
    
#     print "In delete " 
    
    StaffDetails.objects.filter(id=staff_id).delete()
    messages.success(request, "record deleted successfully")
    return redirect('/school/view_staff/') 
      
def Edit_Staff(request, staff_id):    
    
#     print "In Edit " 
    
    Editstaffdetails = StaffDetails.objects.get(id= staff_id)
    Department = DepartmentDetails.objects.all()
    School = SchoolDetails.objects.all()
    Roles=Role.objects.all()
#     print Editstaffdetails.department
    if(Editstaffdetails.birth_date is None):
        print("No Data")
    else:
        Editstaffdetails.birth_date= Editstaffdetails.birth_date.strftime('%Y-%m-%d')
   
    if (Editstaffdetails.gender == 'False'): 
            male= 'checked' 
            female=""
    else:
            female= "checked"
            male=""
        
    return render(request, "staff_edit.html" ,{'Staff_details':Editstaffdetails, 'Department':Department,'School':School,'Roles':Roles, 'female':female, 'male':male }) 



def Edit_Subject(request, subject_id):    
   
    Practical1 = 'none'
    Theory1 = 'none'
    Oral1 = 'none'
    
    Editsubjectdetails = Subject.objects.get(id= subject_id)
   # print "Editsubjectdetails",Editsubjectdetails
    if(Editsubjectdetails.type=="Optional"):
        Editsubjectdetails.type1= "Mandatory"  
    else:
        Editsubjectdetails.type1= "Optional"
    
    Editsubjectsubstrands = SubjectSubStrands.objects.filter(subject_name= subject_id)
   #for a_sub_strands in Editsubjectsubstrands:
   # print "Editsubjectsubstrands",Editsubjectsubstrands
    #print 'Editsubjectsubstrands',Editsubjectsubstrands
        #print 'a_sub_strands2',a_sub_strands
        #print 'a_sub_strands3',a_sub_strands
    for edit_sub_strands in  Editsubjectsubstrands:
          
        
      print 'edit_sub_strands',edit_sub_strands.sub_strands
     
      

      if (edit_sub_strands.sub_strands == 'Oral'):
            print "in oral"
            
            Oral1= "checked" 
           
           
      elif (edit_sub_strands.sub_strands == 'Theory'):
         
            print "in thory"
            
            Theory1= "checked" 
           

            
      elif (edit_sub_strands.sub_strands == 'Practical'):
         
            print "in practical"
            
            Practical1= 'checked'
            
            
     
#     elif (Editsubjectsubstrands3 == 'Practical'):
#         
#             Oral= ""
#             Theory=""
#             Practical="checked"
                
     
    return render(request, "subject_edit.html" ,{'Subject_details':Editsubjectdetails,'Oral':Oral1, 'Theory':Theory1,'Practical':Practical1})             

         
def Save_edited_staff(request):
#     print 'update'
#     print "staff_id :", request.POST['staff_id']
    
    if(request.method=='POST'):
#         print "with in post"
        StaffDetail = StaffDetailsForm(request.POST, request.FILES)
#         print ("errors",StaffDetail.errors)
        staff_id= request.POST['staff_id']
        if StaffDetail.is_valid():
#             print ("form is valid")  
  
            obj = StaffDetails.objects.get(id=staff_id)
            obj.first_name = request.POST['first_name']
            obj.last_name = request.POST['last_name']
            obj.middle_name = request.POST['middle_name']
            obj.contact_num = request.POST['contact_num']
            obj.adress = request.POST['adress']
            obj.gender = request.POST['gender']
            obj.email = request.POST['email']
            obj.birth_date = request.POST["birth_date"]
            obj.department = DepartmentDetails.objects.get(pk=request.POST['department'])
            obj.save()
       
       
#             print "edited saved"
            files = request.FILES.getlist('upload_id_doc')
            StaffDocument.objects.filter(staff_id=staff_id).delete() 
                      
            for a_file in files:
                           
                StaffDocument(staff=obj,document_type =obj.id, document_path=a_file).save()
#                 print a_file.name, "document uploaded"
                            
            messages.success(request, "Staff Profile successfully updated")
            return redirect('/school/view_staff/')  
        else:
            Editstaffdetails = StaffDetails.objects.get(id= staff_id)
            schools = SchoolDetails.objects.all()
            Editstaffdetails.birth_date= Editstaffdetails.birth_date.strftime('%Y-%m-%d')
           
            if (Editstaffdetails.gender == 'False'): 
                male= 'checked' 
                female=""
            else:
                female= "checked"
                male=""
            messages.warning(request, StaffDetail.errors)  
            return render(request, "staff_edit.html" ,{'Staff_details':Editstaffdetails, 'schools':schools, 'female':female, 'male':male })   
    else:
        Editstaffdetails = StaffDetails.objects.get(id= staff_id)
        schools = SchoolDetails.objects.all()
        Editstaffdetails.birth_date= Editstaffdetails.birth_date.strftime('%Y-%m-%d')
           
        if (Editstaffdetails.gender == 'False'): 
            male= 'checked' 
            female=""
        else:
            female= "checked"
            male=""     
        messages.warning(request, 'Invalid method call')        
        return render(request, "staff_edit.html" ,{'Staff_details':Editstaffdetails, 'schools':schools, 'female':female, 'male':male }) 
      
def AddSubject(request):
#     print "in subject class"
    SubjectForm = SubjectDetailsForm()    
    
    return render(request, "subject_registration.html" ,{'SubjectDetailsForm':SubjectForm}) 

def SaveSubject(request):
#     print"in save subject"
   
    if request.method=='POST':
#         print("within POST")
        Subject = SubjectDetailsForm(request.POST)
#         print ("errors",Subject.errors)
        
            #leasein_form_obj = None
        
        if Subject.is_valid():         
#             print ("form is valid")
#             print Subject
            SubjectDetails_obj = Subject.save(commit=False)
            SubjectDetails_obj.is_active = 0
            SubjectDetails_obj.save()

            sub_strands = request.POST.getlist('recommendations')
            print"subject_sub_strands",sub_strands
                 
            for a_sub_strands in sub_strands:
                     
                        SubjectSubStrands(subject_name=SubjectDetails_obj,sub_strands =a_sub_strands).save()
            


            
            messages.success(request, "One record added successfully")
            return redirect('/school/view_subject/')
            
        else:
               
            return render(request, "subject_registration.html" ,{'SubjectDetailsForm':Subject})  
 
def save_edit_subject(request):
#     print 'update'
#     print "subject_id :", request.POST['subject_id']
#     
    if(request.method=='POST'):
#         print "with in post"
        SubjectDetail = SubjectDetailsForm(request.POST)
#         print ("errors",SubjectDetail.errors)
        subject_id= request.POST['subject_id']
        if SubjectDetail.is_valid():
#             print ("form is valid")  
#   
            obj = Subject.objects.get(id=subject_id)
            obj.type = request.POST['type']
            
            obj.subject = request.POST['subject']
            obj.code = request.POST['code']
            obj.save()


            sub_strands = request.POST.getlist('recommendations')
            print "sub_strands",sub_strands
            SubjectSubStrands.objects.filter(subject_name=subject_id).delete() 
            print"SubjectSubStrands",SubjectSubStrands
                 
            for a_sub_strands in sub_strands:
                     
                        SubjectSubStrands(subject_name=obj,sub_strands =a_sub_strands).save()
             




            messages.success(request, "One record updated successfully")

            return redirect('/school/view_subject/')

@login_required      
def StudentDetail(request):    
    studentList = StudentDetails.objects.all()
    roleId = request.session['roleId1']
    print"roleIdroleIdroleIdroleId",roleId
#     print 'studentList',studentList
#     print "in hme...gggg......"
    return render(request, "student_details.html", {'studentList':studentList , 'roleId':roleId})
       
      
def AddUser(request):
#     print "in User class"
    UserForm = UserDetailsForm()    
    
    return render(request, "user.html" ,{'UserDetailsForm':UserForm}) 
       
def SaveUser(request):
#     print"in save User"
    action_type= request.POST.get('action_type')
    
    if request.method=='POST':
#         print("within POST")
        UserDetails = UserDetailsForm(request.POST)
#         print ("errors",UserDetails.errors)
        
            #leasein_form_obj = None
        
        if UserDetails.is_valid():
            
#           print ("form is valid")
#           print UserDetails
          UserDetails_obj = UserDetails.save(commit=False)
          #UserDetails_obj.is_active = 0
          UserDetails_obj.save()
          return redirect('/school/add_user/')














def EditStudent(request,std_id):
     new_list = []
     new_list1 = []
     modelDict = []
     StudentOptionalSubjectMappingId =  StudentOptionalSubjectMappingStudentName.objects.filter(studentdetails_id = std_id)
     for obj in StudentOptionalSubjectMappingId:
         studentoptionalsubjectmapping_id = obj.studentoptionalsubjectmapping_id
         print"studentoptionalsubjectmapping_idstudentoptionalsubjectmapping_id" ,obj.studentoptionalsubjectmapping_id
         subjectId = StudentOptionalSubjectMappingSubjectName.objects.filter( studentoptionalsubjectmapping_id = studentoptionalsubjectmapping_id)
         for sub in subjectId:
             print"subjectIdsubjectIdsubjectId",sub.subject_id
             sub_obj = Subject.objects.get(id  = sub.subject_id)
             new_list1.append(model_to_dict(sub_obj))
     print "newlist .....",new_list1 
     
     StudentDetailsForm1  = StudentDetails.objects.get(id=std_id)
     StudentMandatorySubject = StudentMandatorySubjectMapping.objects.filter(student_id = std_id)
     
     
     ClassDetail =  ClassDetails.objects.all()
     ParentDetail =   ParentsDetails.objects.all()
     StudentDetailsForm1.joining_date= StudentDetailsForm1.joining_date.strftime('%Y-%m-%d')
     StudentDetailsForm1.birth_date= StudentDetailsForm1.birth_date.strftime('%Y-%m-%d')
#      print"date is...........",StudentDetailsForm1.joining_date
#      print"birth_date is...........",StudentDetailsForm1.birth_date
     if (StudentDetailsForm1.gender == 'False'): 
        male= 'checked' 
        female=""
     else:
        female= "checked"
        male=""
        
     StudentClassSubjectRelation_obj = StudentClassSubjectRelation.objects.filter(student_id = std_id).values_list('subject_id', flat=True).distinct().distinct()
#     print"StudentClassSubjectRelation_obj", StudentClassSubjectRelation_obj
     for obj in StudentMandatorySubject:
         id = obj.subject_id
         subject = Subject.objects.get(id = id)
         modelDict.append(subject)
     print "modelDictmodelDictmodelDictmodelDict",modelDict
         
     for obj in StudentClassSubjectRelation_obj:
        
        Subject1 = Subject.objects.get(id = obj )
#         print Subject1.subject
        new_list.append(Subject1 )
        
     return render(request, "update_student.html" ,{'StudentDetailsForm':StudentDetailsForm1 ,'subjectopt':new_list1,'ParentsDetails':ParentDetail ,'subject':new_list ,'ClassDetail':ClassDetail ,'female':female,'male':male ,"modelDict":modelDict }) 
      
      
      
def DeactivateStudent(request,std_id):
#     print "in deactivate ...."
#     
    StudentDetails_obj = StudentDetails.objects.get(id=std_id)
#     print StudentDetails_obj.first_name
#     print StudentDetails_obj.is_active
    if  StudentDetails_obj.is_active == "1":
        StudentDetails_obj.is_active = 0
#         print StudentDetails_obj.is_active
        StudentDetails_obj.save()
    else:
        StudentDetails_obj.is_active = 1
#         print StudentDetails_obj.is_active
        StudentDetails_obj.save()
         
    return redirect('/school/student_details/')     
      
def DeleteStudent(request):    
    student_id = request.POST['studentId']
#     print student_id
    
    StudentDetails.objects.filter(id=student_id).delete()
    messages.success(request, "record deleted successfully")
    
    return redirect('/school/student_details/') 

def delete_subject(request, subject_id):    
  
    Subject.objects.filter(id=subject_id).delete()
    messages.success(request, "record deleted successfully")
    
    return redirect('/school/view_subject/') 

def SaveEditedStudent(request):
#     print"in save"
#     print 'update'
#     
    
    if(request.method=='POST'):
         print "with in post"
    StudentDetail = StudentDetailsForm(request.POST)
#     print ("errors",StudentDetail.errors)
    
    if StudentDetail.is_valid():
        print ("form is valid") 
       
#     print request.POST 
    student_id = request.POST['student_id1']
    obj = StudentDetails.objects.get(id=student_id)
    
    obj.first_name = request.POST['first_name']
    obj.last_name = request.POST['last_name']
    obj.religion = request.POST['religion']
    obj.nationality = request.POST['nationality']
    obj.father_name = request.POST['father_name']
    obj.mother_name = request.POST['mother_name']
    obj.email = request.POST['email']
    obj.gender = request.POST['gender']
    obj.birth_date = request.POST['birth_date']
    #obj.parent_name = ParentsDetails.objects.get(pk=request.POST['parent_name'])
    obj.student_enrollment_num = request.POST['student_enrollment_num']
    
   
#     obj.blood_group = request.POST['blood_group']
  
    obj.save()
    messages.success(request, "One record updated successfully")
    
    return redirect('/school/student_details/') 






def SectionDetail(request):    
    SectionList1 = Sections.objects.all()
#     print 'SectionList',SectionList1
    return render(request, "section_details.html", {'SectionList':SectionList1}) 

def AddSection(request):
#     print "in Section"
    SectionForm = SectionsForm()    
    #academicyr= AcademicDetails.objects.all()  
    return render(request, "section_add.html" ,{'sectiondetails1':SectionForm})
  
def SaveSection(request):
#     print"in save section"
    action_type= request.POST.get('action_type')
    
    if request.method=='POST':
#         print("within POST")
        Section = SectionsForm(request.POST)
#         print ("errors",Section.errors)
        
            #leasein_form_obj = None
        
        if Section.is_valid():
            
            print ("form is valid")
           
            Section_obj = Section.save(commit=False)
            Section_obj.is_active = 0
            Section_obj.save()
            messages.success(request, "One record added successfully")
            
    return redirect('/school/section_details/')

def UpdateSection(request, section_id):    
    
#     print "In Update " 
#     print section_id
    sectiondetails1 = Sections.objects.get(pk=section_id)
    academicyr=AcademicDetails.objects.all()
    classdetails=ClassDetails.objects.all()
    return render(request, "section_update.html" ,{'sectiondetails1':sectiondetails1,'academicyr':academicyr,'classdetails':classdetails}) 
 
def SaveUpdatedSection(request):
#     print 'update'
    #print "class_id :", request.POST['class_id']
    
    if(request.method=='POST'):
         print "with in post"
    SectionDetail = SectionsForm(request.POST)
    print ("errors",SectionDetail.errors)
     
    if SectionDetail.is_valid():
        print ("form is valid") 
    section_code = request.POST['section_code']
    print request.POST 
    print"section_code........." ,section_code 
    section_id= request.POST.get('section_id')
    sectionobj=Sections.objects.get(pk=section_id)
    sectionobj.section_code = request.POST['section_code']
    sectionobj.section = request.POST['section']
    #sectionobj.academic_year = AcademicDetails.objects.get(pk=request.POST['academic_year'])
    sectionobj.save()
    messages.success(request, "One record updated successfully")
    return redirect('/school/section_details/')  

def DeleteSection(request, section_id):    
    
#     print "In delete " 
    #messages.error(request, 'Are you sure you want to delete.')
    messages.success(request, "record deleted successfully")
    Sections.objects.filter(id=section_id).delete()
    return redirect('/school/section_details/')

def viewAcademic(request):
    academicYear = None
#     print "in view academyc"
    modelDict=[]
    class_name = request.GET.get('class_name',None)
#     print ">>>>>>>>>>>>>", class_name
    
    class_obj = ClassDetails.objects.filter(id = class_name)
    for object in class_obj:
#        print object.academic_year.id
       academic_year = object.academic_year.id
#        print"academic_year",academic_year
       academicYear = AcademicYear.objects.filter(id = academic_year)
    for obj in academicYear:
        modelDict.append(model_to_dict(obj)) 
    
    return JsonResponse(modelDict,safe=False)

def AddSchool(request):
#     print "in School"
    SchoolForm = SchoolDetailsForm()    
    #academicyr= AcademicDetails.objects.all()  
    return render(request, "viewSchool.html" ,{'SchoolDetails':SchoolForm})

def SchoolDetail(request):
    SchoolList = SchoolDetails.objects.all()
#     print 'SchoolList',SchoolList
    return render(request, "school_details.html", {'SchoolList':SchoolList}) 

def SaveSchool(request):
#     print"in save student"
    
    action_type= request.POST.get('action_type')
    
    if request.method=='POST':
#         print("within POST")
        SchoolDetails = SchoolDetailsForm(request.POST,request.FILES)
#         print ("errors",SchoolDetails.errors)
        
            
        
        if SchoolDetails.is_valid():  
#             print ("form is valid")
#             print SchoolDetails
            SchoolDetails_obj = SchoolDetails.save(commit=False)
            SchoolDetails_obj.is_active = 0
            SchoolDetails_obj.save()
            messages.success(request, "One record added successfully")
            return redirect('/school/school_details/')
        
def UpdateSchool(request, school_id):
    
#     print "In Update " 
#     print school_id
    schooldetails = SchoolDetails.objects.get(pk=school_id)
    return render(request, "school_update.html" ,{'SchoolDetails':schooldetails}) 
 
def SaveUpdatedSchool(request):
#     print 'update'
    #print "class_id :", request.POST['class_id']
    
    if(request.method=='POST'):
         print "with in post"
    schooldetail = SchoolDetailsForm(request.POST,request.FILES)
#     print ("errors",schooldetail.errors)
    
    if schooldetail.is_valid():
         print ("form is valid")  
#     print request.POST 
#     
    school_id= request.POST['school_id']
    schoolobj=SchoolDetails.objects.get(pk=school_id)
    
    schoolobj.school_name = request.POST['school_name']
    schoolobj.school_address = request.POST['school_address']
    #schoolobj.logo = request.POST['logo']
    schoolobj.contact_num = request.POST['contact_num']
    schoolobj.email = request.POST['email']
    schoolobj.website = request.POST['website']
    schoolobj.save()
    messages.success(request, "One record updated successfully")
    return redirect('/school/school_details/')  

def DeleteSchool(request, school_id):    
    
#     print "In delete " 
    #messages.error(request, 'Are you sure you want to delete.')
    messages.success(request, "record deleted successfully")
    SchoolDetails.objects.filter(id=school_id).delete()
    return redirect('/school/school_details/') 

      
      
def viewSubject(request):
   
    modelDict=[]
    class_field = request.GET.get('class_name',None)
#     print ">>>>>>>>>>>>>", class_field
  
    
   
    
    sub_obj = ClassSubjectRelation.objects.filter(class_field = class_field)
#     print sub_obj
#    
    for object in sub_obj:
#        print"object",object
       subject = object.subject.id
#        print"subject",subject
       subject = Subject.objects.filter(id = subject)
       for obj in subject:
        modelDict.append(model_to_dict(obj)) 
    return JsonResponse(modelDict,safe=False)
 
def saveStudentSubject(request):
#     
#     print "in save student"
#   
    if request.method == 'POST': 
           check=request.POST.getlist('check')
           studentId1 = request.POST['student_id1']
#            print "...........studentId1"
           request.session['studentId1'] = studentId1
#            print "...........studentId444"
           classId = request.POST['class_id']
           StudentDetails_obj = StudentDetails.objects.get(id = studentId1)
#            print check
           for obj in check:
#               print "in for    lllll"
              StudentClassSubjectRelation(subject_id=obj , student_id = studentId1 ,class_id = classId).save()
    return redirect('/school/viewStudentSubject/')
      

def viewStudentSubject(request):
    
      
#     print "in view subkkkk"
    new_list=[]
    ParentDetail =   ParentsDetails.objects.all()
    ClassDetail =  ClassDetails.objects.all()
    studentId1 = request.session['studentId1']
   
#     print "viewStudentSubjectghhhhhhhhhhhhhhhhhhhhhhhhhhhhhh", studentId1
    StudentDetails_obj = StudentDetails.objects.get(id = studentId1)
    StudentDetails_obj.birth_date= StudentDetails_obj.birth_date.strftime('%Y-%m-%d')
    StudentDetails_obj.joining_date= StudentDetails_obj.joining_date.strftime('%Y-%m-%d')
    if (StudentDetails_obj.gender == 'False'): 
        male= 'checked' 
        female=""
    else:
        female= "checked"
        male=""
    StudentClassSubjectRelation_obj = StudentClassSubjectRelation.objects.filter(student_id = studentId1).values_list('subject_id', flat=True).distinct().distinct()
#     print"StudentClassSubjectRelation_obj", StudentClassSubjectRelation_obj
    for obj in StudentClassSubjectRelation_obj:
        
        Subject1 = Subject.objects.get(id = obj )
#         print Subject1.subject
        new_list.append(Subject1 )
        
#     print "new list",new_list
    return render(request, "update_student.html" ,{'StudentDetailsForm':StudentDetails_obj , "subject":new_list , 'female':female, 'male':male ,'ParentsDetails':ParentDetail,'ClassDetail':ClassDetail}) 

       
    
def viewSub(request):
#     print "in view subject class"
    Subjectlist = Subject.objects.all()
#     print Subjectlist
    class_id = request.session['class_id']
#     print class_id
    classdetails1 = ClassDetails.objects.get(pk=class_id)
    academicyr = AcademicDetails.objects.all()
    #return render(request, "class_update.html" ,{'classdetails1':classdetails1}) 
    return render(request, "class_update.html" ,{'ClassDetailsForm':classdetails1, 'academicyr':academicyr,'Subjectlist':Subjectlist}) 
    #return render(request, "class_update.html" ,{'Subjectlist':Subjectlist}) 
 
def saveClassSubject(request):
#     print "in save class sub"
     
    
    if request.method == 'POST': 
        check=request.POST.getlist('check')
        class_id = request.POST['class_id']
#         print "...........classId1"
#         print class_id
        request.session['class_id'] = class_id
#         print class_id
        ClassDetails_obj = ClassDetails.objects.get(id = class_id)
#         print ClassDetails_obj.id
#         print check
        for obj in check:
#             print "in for"
            ClassSubjectRelation(subject_id=obj ,class_field = ClassDetails_obj).save()
    return redirect('/school/update_class/')
    
def viewClassSubjectSec(request):
#     print "in view Class Sub Sec"
    
    new_list=[]
    new_list1=[]
    
    class_id = request.session['class_id']
    ClassDetails_obj = ClassDetails.objects.get(id = class_id)
    ClassSubjectRelation_obj = ClassSubjectRelation.objects.filter(class_field = class_id).values_list('subject_id', flat=True).distinct().distinct()
#     print"ClassSubjectRelation_obj", ClassSubjectRelation_obj
    
    for obj in ClassSubjectRelation_obj:
#         print "In Forrrr"
        #sub=obj.subject
#         print obj
        Subject1 = Subject.objects.get(id = obj.subject_id)
#         print Subject1.subject
        new_list.append(Subject1)
        academicyr = AcademicDetails.objects.all()
#     print "new list",new_list
    
    ClassSectionRelation_obj = ClassSectionRelation.objects.filter(class_field = class_id).values_list('section_id', flat=True).distinct().distinct()
#     print"ClassSectionRelation_obj", ClassSectionRelation_obj
#     
    for obj1 in ClassSectionRelation_obj:
        
        Section1 = Sections.objects.get(id = obj1.section_id )
#         print Section1.section
        new_list1.append(Section1)
        academicyr = AcademicDetails.objects.all()
#     print "new list",new_list1
    
    
    return render(request, "class_update.html" ,{'ClassDetailsForm':ClassDetails_obj , 'academicyr':academicyr, "subject":new_list,"section":new_list1}) 

def viewSection(request):
#     print "in view section class"
    section = Sections.objects.all()
#     print section
    class_id = request.session['class_id']
#     print class_id
    classdetails1 = ClassDetails.objects.get(pk=class_id)
    academicyr = AcademicDetails.objects.all()
    #return render(request, "class_update.html" ,{'classdetails1':classdetails1}) 
    return render(request, "class_update.html" ,{'ClassDetailsForm':classdetails1, 'academicyr':academicyr,'section':section}) 
    #return render(request, "class_update.html" ,{'section':section }) 

def saveClassSection(request):
#     print "in save class sub"
     
    
    if request.method == 'POST':
        class_id = request.POST['class_id'] 
        check=request.POST.getlist('check')
           
#         print "...........classId1"
#         print class_id
        request.session['class_id'] = class_id
#         print class_id
        ClassDetails_obj = ClassDetails.objects.get(id = class_id)
#         print ClassDetails_obj.id
#         print check
        for obj in check:
#             print "in for"
            ClassSectionRelation(section_id=obj ,class_field = ClassDetails_obj).save()
            
    return redirect('/school/update_class/')
    #return render(request, "update_student.html" ,{'ClassDetailsForm':ClassDetails_obj ,'section':check})

def viewClassSection(request):
#     print "in view Class sec"
    new_list=[]
    classId1 = request.session['classId1']
    ClassDetails_obj = ClassDetails.objects.get(id = classId1)
    ClassSectionRelation_obj = ClassSectionRelation.objects.filter(class_field = classId1)
#     print"ClassSectionRelation_obj", ClassSectionRelation_obj
    
    for obj in ClassSectionRelation_obj:
        
        Section1 = Sections.objects.get(id = obj.section_id )
#         print Section1.section
        new_list.append(Section1)
        academicyr = AcademicDetails.objects.all()
        
#     print "new list",new_list
    return render(request, "class_update.html" ,{'ClassDetailsForm':ClassDetails_obj ,'academicyr':academicyr, "section":new_list}) 


def viewParentEmail(request):          
#     print "in view parent emil"
    
    finalDict=[]
    parent_name = request.GET.get('parent_name',None)
#     print ">>>>>>>>>>>>>", parent_name
    ParentDetails_obj = ParentsDetails.objects.get(id = parent_name)
    
    finalDict.append(model_to_dict(ParentDetails_obj))
    
    
    return JsonResponse(finalDict,safe=False)

def viewParent(request):
#     print "in User class"
    ParentsDetails = ParentsDetailsForm() 
    SecondaryParentDetailsFormSets = formset_factory(form=SecondaryParentDetailsForm)
    SecondaryParentDetailsFormSets = SecondaryParentDetailsFormSets(prefix='sec_parent')   
    
    
    return render(request, "parent.html" ,{'ParentsDetailsForm':ParentsDetails,'SecondaryParentDetailsFormSets':SecondaryParentDetailsFormSets})     

def saveParent(request):
     if(request.method=='POST'):
         ParentsDetails = ParentsDetailsForm(request.POST)
         ParentsDetails_obj = ParentsDetails.save(commit=False)
         ParentsDetails_obj.is_active = 0
         ParentsDetails_obj.save()
         
         print"parent_objparent_objparent_objparent_obj",ParentsDetails_obj
         SecondaryParentDetailsFormSets = formset_factory(form=SecondaryParentDetailsForm)
         formset = SecondaryParentDetailsFormSets(request.POST,prefix='sec_parent')
         formset.errors
         for frm in formset.forms: 
            print(frm.errors)
                #print(frm)
            if frm.is_valid():
                    
                    #print("leasein_form_obj",leasein_form_obj)
                    
                sec_parent_details=frm.save(commit=False)
                sec_parent_details.parent  = ParentsDetails_obj
               
                sec_parent_details.save()
         messages.success(request, "One record added successfully")
     return redirect('/school/parentList/')
    
     
def ParentList(request):
#     print "in parent list"
    ParentsDetail = ParentsDetails.objects.all()
    
    return render(request, "parentList.html" ,{'ParentsDetail':ParentsDetail})   
    
def editParent(request,parent_id):
#     print "in edit parent"
    ParentsDetailsForm  = ParentsDetails.objects.get(id=parent_id)
    StudentDetail = StudentDetails.objects.filter(parent_name = parent_id)
#     print "StudentDetails",StudentDetail
    SecondaryParentDetail = SecondaryParentDetails.objects.filter(parent = parent_id)
    ParentsDetailsForm.birth_date= ParentsDetailsForm.birth_date.strftime('%Y-%m-%d')
    if (ParentsDetailsForm.gender == 'False'): 
        male= 'checked' 
        female=""
    else:
        female= "checked"
        male=""
    return render(request, "parent_edit.html" ,{'ParentsDetails':ParentsDetailsForm ,'StudentDetail':StudentDetail ,'female':female, 'male':male ,'SecondaryParentDetail':SecondaryParentDetail }) 
  
    
def saveEditedParent(request):
#     print "in save edit parent"
    if(request.method=='POST'):
         print "with in post"
    ParentsDetail = ParentsDetailsForm(request.POST)
#     print ("errors",ParentsDetail.errors)
    
    if ParentsDetail.is_valid():
        print ("form is valid")  
    
#     print request.POST 
    parent_id = request.POST['parent_id1']
#     print parent_id
    obj = ParentsDetails.objects.get(id=parent_id)
#     print obj
    
    obj.name = request.POST['name']
    obj.contact_num = request.POST['contact_num']
    obj.birth_date = request.POST['birth_date']
    obj.gender = request.POST['gender']
    obj.address = request.POST['address']
    obj.emai_id = request.POST['emai_id']
    obj.last_name = request.POST['last_name']
    messages.success(request, "One record updated successfully")
    
    obj.save()
    
    return redirect('/school/parentList/') 

def DeleteParent(request):
     if(request.method=='POST'):
#          print "in delete"
         parent_id = request.POST['parentid']
#          print parent_id
      
         ParentsDetails.objects.get(id=parent_id).delete()
         messages.success(request, "record deleted successfully")
         
     return redirect('/school/parentList/') 
     
def RoleDetail(request):
    roleList = Role.objects.all()
   
    return render(request, "role_details.html", {'roleList':roleList}) 

def AddRole(request):
#     print "in Academic Year"
    RoleForm = RoleDetailsForm()    
    return render(request, "role.html" ,{'RoleDetailsForm':RoleForm}) 
 
def SaveRole(request):
#     print "in Save Academic Year"
    action_type= request.POST.get('action_type')
    
    if request.method=='POST':

        RoleDetails = RoleDetailsForm(request.POST)
        print RoleDetails.errors
        if RoleDetails.is_valid():
            RoleDetails.save()
            print "roleeeeee ",RoleDetails
            messages.success(request, "One record added successfully")
            
        else:
          
          messages.success(request, "record already Exists")
          return render(request, "role.html",{'RoleDetailsForm':RoleDetails})
        return redirect('/school/role_details/')  
    
def UpdateRole(request, role_id):
    
#     print "In Update " 
#     print year_id
    roledetails = Role.objects.get(pk=role_id)
    return render(request, "role_update.html" ,{'RoleDetailsForm':roledetails}) 
 
def SaveUpdatedRole(request):
#     print 'update'
    #print "class_id :", request.POST['class_id']
    
    if(request.method=='POST'):
#         print "with in post"
      roledetails = RoleDetailsForm(request.POST)
#     print ("errors",AcademicDetail.errors)
#     
    if roledetails.is_valid():
         print ("form is valid")  
    
    
    role_id= request.POST['role_id']
    roleobj=Role.objects.get(pk=role_id)
    roleobj.role = request.POST['role']
    roleobj.save()
    messages.success(request, "One record updated successfully")
    return redirect('/school/role_details/')  

def DeleteRole(request, role_id):
    
#     print "In delete " 
    #messages.error(request, 'Are you sure you want to delete.')
    messages.success(request, "record deleted successfully")
    Role.objects.filter(id=role_id).delete()
    return redirect('/school/role_details/')     

def ViewClassSection(request):
    # print "in Section"
    ViewClassSection1 = ClassSection()    
  #  academicyr= AcademicDetails.objects.all()  
    return render(request, "view_class_section.html" ,{'view_class_section':ViewClassSection1})



def ViewSectionDetails(request):  
    
    print "in view section detail"
    print "ViewMultisectSectionList............"
    print "in ViewMultisectClassList............"
    modelDict=[]
    class_name = request.GET.get('class_name',None)
    print ">>>>>>>>>>>>>", class_name
    ClassSectionMap = ClassSectionMapping.objects.filter(class_name = class_name)
    print"ClassSectionMap",ClassSectionMap
    for obj in ClassSectionMap:
        print" ClassSectionMapping",obj.id
        ClassSectionMapping_Id = obj.id
        ClassSectionMappingSectionName_obj = ClassSectionMappingSectionName.objects.filter(classsectionmapping_id  =  ClassSectionMapping_Id )
        print"ClassSectionMappingSectionName_obj ",ClassSectionMappingSectionName_obj 
        for object in ClassSectionMappingSectionName_obj :
            sectionsId = object.sections_id
            print "ssectionsId",sectionsId
            Section = Sections.objects.filter(id = sectionsId)
            print "section:",Section
            for obj in Section:
                modelDict.append(model_to_dict(obj)) 
            print "modelDictmodelDictmodelDictmodelDictmodelDictmodelDictmodelDict",modelDict
    return JsonResponse(modelDict,safe=False)




def ViewStudentMedicalList(request):
    print "in view subject class"
    ClassSection1 = ClassSection() 
    MedicalForm1 = MedicalForm()
    class_name1 = request.POST.get('class_name')
   #print "class_name",class_name
          
    section_name1 = request.POST.get('section_name')
    
     
#    print "section_name",section_name

    StudentList = StudentDetails.objects.filter(class_name=class_name1,section=section_name1)
   
 
    return render(request, "medical_list.html" ,{'StudentList':StudentList,'add_medical_list':MedicalForm1,'view_class_section':ClassSection1}) 

def AddMedical(request):
    # print "in Section"
    MedicalForm1 = MedicalForm()    
  #  academicyr= AcademicDetails.objects.all()  
    return render(request, "medical_list.html" ,{'add_medical_list':MedicalForm1})

def SaveMedicalStudent(request):
    print("within POST")
    if request.method=='POST':
        print("within POST")
        MedicalDetails = MedicalForm(request.POST)
        print ("errors",MedicalDetails.errors)
        
        if MedicalDetails.is_valid():
           
            
            print ("form is valid")
            
            studentid=request.POST.get('studentid')
            print "studentid",studentid
           
            MedicalDetails_obj = MedicalDetails.save(commit=False)
            MedicalDetails_obj.is_active = 0
            
            MedicalDetails_obj.student_id = request.POST['studentid']
            
            MedicalDetails_obj.save()
#             print StudentDetails_obj.id
    return redirect('/school/view_class_section/')   

def  DeactivateUser(request,user_id):
#     print "in deactivate ...."
#     
    StaffDetails_obj = StaffDetails.objects.get(id=user_id)
#     print StudentDetails_obj.first_name
#     print StudentDetails_obj.is_active
    if  StaffDetails_obj.is_active == "1":
       StaffDetails_obj.is_active = 0
#         print StudentDetails_obj.is_active
       StaffDetails_obj.save()
    else:
        StaffDetails_obj.is_active = 1
#         print StudentDetails_obj.is_active
        StaffDetails_obj.save()
         
    return redirect('/school/view_staff/')     
      



