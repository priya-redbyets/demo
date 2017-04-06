from django.shortcuts import render,redirect
from Mapping.models import *
from Mapping import forms
from .forms import *
from django.contrib import messages
from django.forms.models import model_to_dict, inlineformset_factory
from django.http import JsonResponse
# Create your views here.

####################### AcedemicYear Class Mapping #####################

def ClassAcedemicMapping(request):    
#    studentList = StudentDetails.objects.all()
#     print 'studentList',studentList
#     print "in hme...gggg......"
    return render(request, "academic_mapping_view.html", {})
#

    ###########SHOWS ACADEMIC YEAR & CLASS MAPPING#############
def ClassAcedemicyear(request):
    AcademicyearClassRelation = AcademicyearClassRelationForm()
    return render(request,'academycyear_class_mapping.html', {'AcademicyearClassRelationForm':AcademicyearClassRelation})
    
    
    ##############Save ACADEMIC YEAR & CLASS MAPPING Form######
def AcademicyearClassMapping(request):
    print"in post"
    if request.method == 'POST':
        print"in post1"
        form = AcademicyearClassRelationForm(request.POST)
        if form.is_valid():
            form.save()
            classsection_form=ClassSectionRelationForm(request.POST)
            print "CLasssection",classsection_form.errors
            if classsection_form.is_valid():
               classsection_form.save(commit=False)
               classsection_form.save()
            print "in ViewMappedAcademicClass............"
            academic_year= request.POST['academic_year']
#             print ">>>>>>>>>>>>>", academic_year
              
#             AcademicyearClassRel = AcademicyearClassRelation.objects.filter(academic_year=academic_year)
#             print ">>>>>>>>>>>>>", AcademicyearClassRel
#             for obj in AcademicyearClassRel:
#                 AcademicyearClassRel_Id = obj.id
#                 print" AcademicyearClassRelation.id",AcademicyearClassRel_Id
#                 ClassDetail = AcademicyearClassRelationClassId.objects.filter(academicyearclassrelation_id = AcademicyearClassRel_Id)
#                 print ">>>>>>>>>>>>>", ClassDetail
    return redirect('/school/classAcedemicyear/')
             
             
             
def ViewMappedAcademicClass(request):
    AcademicyearClassRelation1 = AcademicyearClassRelationForm()
    modelDict=[]
    modelDict1=[]
    academic_year = request.session['academic_year']
    print "in academic_year",academic_year
    AcademicyearClassRel1 = AcademicyearClassRelation.objects.get(academic_year=academic_year)
    print ">>>>>>>>>>>>>", AcademicyearClassRel1.academic_year
    AcademicyearClassRel = AcademicyearClassRelation.objects.filter(academic_year=academic_year)
    print ">>>>>>>>>>>>>", AcademicyearClassRel
    
    for obj in AcademicyearClassRel:
        AcademicyearClassRel_Id = obj.id
        print" AcademicyearClassRelation.id",AcademicyearClassRel_Id
        academicYearclass_obj = AcademicyearClassRelationClassId.objects.filter(academicyearclassrelation_id = AcademicyearClassRel_Id)
        print ">>>>>>>>>>>>>", academicYearclass_obj
        for object in academicYearclass_obj:
            classId = object.classdetails_id
            print "classId",classId
            ClassDetail = ClassDetails.objects.filter(id = classId)
            for obj in ClassDetail:
                modelDict.append(model_to_dict(obj))
                  
        academicYearclass_obj1 = AcademicyearClassRelationSectionId.objects.filter(academicyearclassrelation_id = AcademicyearClassRel_Id)
        print ">>>>>>>>>>>>>", academicYearclass_obj1
        for object in academicYearclass_obj1:
            sectionId = object.sections_id
            print "classId",sectionId
            SectionDetail = Sections.objects.filter(id = sectionId)
            for obj in SectionDetail:
                modelDict1.append(model_to_dict(obj))
    return render(request, "academycyear_class_mapping.html" ,{'AcademicyearClassRelationForm':AcademicyearClassRelation1,'ClassDetailsForm':ClassDetail,'SectionDetailsForm':SectionDetail,'AcademicyearClassRel':AcademicyearClassRel1}) 
   


    ##############Save ACADEMIC YEAR & CLASS MAPPING Form######
def ViewMultisectClassList(request):
    print "in ViewMultisectClassList............"
    modelDict=[]
    academic_year = request.GET.get('academic_year',None)
    print ">>>>>>>>>>>>>", academic_year
    request.session['academic_year'] = academic_year
    AcademicyearClassRel = AcademicyearClassRelation.objects.filter(academic_year = academic_year)
    for obj in AcademicyearClassRel:
        print" AcademicyearClassRelation.id",obj.id
        AcademicyearClassRel_Id = obj.id
        academicYearclass_obj = AcademicyearClassRelationClassId.objects.filter(academicyearclassrelation_id = AcademicyearClassRel_Id)
        print"academicYearclass_obj",academicYearclass_obj
        for object in academicYearclass_obj:
            classId = object.classdetails_id
            print "classId",classId
            ClassDetail = ClassDetails.objects.filter(id = classId) 
            for obj in ClassDetail:
                modelDict.append(model_to_dict(obj)) 
    return JsonResponse(modelDict,safe=False)

def ViewMultiSectionList(request):
    print "in ViewMultisectClassList............"
    modelDict=[]
    academic_year = request.GET.get('academic_year',None)
    print ">>>>>>>>>>>>>", academic_year
    AcademicyearClassRel = AcademicyearClassRelation.objects.filter(academic_year = academic_year)
    for obj in AcademicyearClassRel:
        print" AcademicyearClassRelation.id",obj.id
        AcademicyearSectionRel_Id = obj.id
        academicYearclass_obj = AcademicyearClassRelationSectionId.objects.filter(academicyearclassrelation_id = AcademicyearSectionRel_Id)
        print"academicYearclass_obj",academicYearclass_obj
        for object in academicYearclass_obj:
            SectionId = object.sections_id
            print "classId",SectionId
            SectionDetail = Sections.objects.filter(id = SectionId) 
            for obj in SectionDetail:
                modelDict.append(model_to_dict(obj)) 
    return JsonResponse(modelDict,safe=False)


######################################AcedemicYear Class Mapping Ends#########################################



####################### Class Section Mapping #####################

    ###########SHOWS Class Section MAPPING#############
def SectionClass(request):
    print"in section class"
    ClassSectionRelation = ClassSectionRelationForm()
    return render(request,'class_section_mapping.html', {'ClassSectionRelationForm':ClassSectionRelation})
 ##############Save ACADEMIC YEAR & CLASS MAPPING Form######
def ClassSectionMaping(request):
    print"in post1"
    if request.method == 'POST':
        print"in post"
        form = ClassSectionRelationForm(request.POST)
        if form.is_valid():
            form.save()
    return redirect('/school/sectionClass/')     
     
def ViewMultisectSectionList(request):
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
            for obj in Section:
                modelDict.append(model_to_dict(obj)) 
    return JsonResponse(modelDict,safe=False)
      
     
####################### ClassSubject Mapping #####################

    ###########SHOWS ClassSubject MAPPING#############
def ClassSubject(request):
    print"in section class"
    ClassSubjectMapping = ClassSubjectMappingForm()
    return render(request,'class_subject_mapping.html', {'ClassSubjectMappingForm':ClassSubjectMapping})


##############Save Class Section MAPPING Form######
def ClassSubjectMaping(request):
    print"in post1"
    if request.method == 'POST':
        print"in post"
        form = ClassSubjectMappingForm(request.POST)
        if form.is_valid():
            form.save()
    return redirect('/school/subjectClass/')     

def ViewMultisectSubjectList(request):
    print "in ViewMultisectClassList............"
    modelDict=[]
    class_name1 = request.GET.get('class_name',None)
    print ">>>>>>>>>>>>>", class_name1
    ClassSubjectMaping = ClassSubjectMapping.objects.filter(class_name = class_name1)
    for obj in ClassSubjectMaping:
        print" ClassSubjectMaping",obj.id
        ClassSubjectMaping_Id = obj.id
        ClassSubjectMappingSubjectName_obj = ClassSubjectMappingSubjectName.objects.filter(classsubjectmapping_id  =  ClassSubjectMaping_Id )
        print"ClassSubjectMappingSubjectName_obj",ClassSubjectMappingSubjectName_obj
        for object in ClassSubjectMappingSubjectName_obj:
            subjectId = object.subject_id
            print "subjectId",subjectId
            subject = Subject.objects.filter(id = subjectId) 
            for obj in subject:
                modelDict.append(model_to_dict(obj)) 
    return JsonResponse(modelDict,safe=False)




####################### Class-Teacher Mapping ##################################

##########SHOWS Class Teacher MAPPING#############
def TeacherClass(request):
    print"in teacher class"
    ClassTeacherRelation = ClassTeacherRelationForm()
    return render(request,'class_teacher_mapping.html', {'ClassTeacherRelationForm':ClassTeacherRelation})

def ClassTeacherMaping(request):
    print"in post1"
    if request.method == 'POST':
        
        form = ClassTeacherRelationForm(request.POST)
        
        if form.is_valid():
            form.save()
    return redirect('/school/teacherClass/')     
     
def ViewMultisectTeacherList(request):
    
    print "in ViewMultisectClassList............"
    modelDict=[]
    class_name = request.GET.get('class_name',None)
    print ">>>>>>>>>>>>>", class_name
    ClassTeacherMap = ClassTeacherMapping.objects.filter(class_name = class_name)
    print"ClassteacherMap1",ClassTeacherMap
    for obj in ClassTeacherMap:
        print" ClassteacherMap",obj.id
        ClassTeacherMapping_Id = obj.id
        ClassTeacherMappingTeacherName_obj = ClassTeacherMappingTeacherName.objects.filter(classteachermapping_id  =  ClassTeacherMapping_Id )
        print"ClassTeacherMappingTeacherName_obj ",ClassTeacherMappingTeacherName_obj 
        for object in ClassTeacherMappingTeacherName_obj :
            teacherId = object.staffdetails_id
            print "ssectionsId",teacherId
            teacher = StaffDetails.objects.filter(id = teacherId) 
            for obj in teacher:
                rec={}
                rec['id']=obj.id
                rec['email']=obj.email
                modelDict.append(rec) 
#                 modelDict.append(model_to_dict(obj)) 
            
    return JsonResponse(modelDict,safe=False)

def ViewAcademicDetail(request):  
    
    print "in view Academic detail"
    modelDict=[]
    academic_year = request.GET.get('academic_year',None)
    print ">>>>>>>>>>>>>", academic_year
    AcademicClassMap = AcademicyearClassRelation.objects.filter(academic_year = academic_year)
    print"ClassTeacherMap",AcademicClassMap
    for obj in AcademicClassMap:
        print" AcademicClassMapping",obj.id
        AcademicClassMapping_Id = obj.id
        AcademicyearClassRelationClassName_obj = AcademicyearClassRelationClassId.objects.filter(academicyearclassrelation_id  =  AcademicClassMapping_Id )
        print"AcademicyearClassRelationClassName_obj ",AcademicyearClassRelationClassName_obj 
        for object in AcademicyearClassRelationClassName_obj :
            classdetailsId = object.classdetails_id
            print "TeacherId",classdetailsId
            ClassDetail = ClassDetails.objects.filter(id = classdetailsId)
            print "Teacher:",ClassDetail
            for obj in ClassDetail:
                modelDict.append(model_to_dict(obj)) 
            print "Modeldict",modelDict
    return JsonResponse(modelDict,safe=False)
    
####################### ROLE USER Mapping #####################

    ###########SHOWS ROLE USER Mapping #############
def RoleUser(request):
    print"in section class"
    RoleUserRelation = RoleUserRelationForm()
    return render(request,'role_user_mapping.html', {'RoleUserRelationForm':RoleUserRelation})



    ##############Save Role User  MAPPING Form######
def RoleUserMapping(request):
    print"in post1"
    if request.method == 'POST':
        print"in post"
        form = RoleUserRelationForm(request.POST)
        role_name =   request.POST['role_name']
        print"role_namerole_namerole_namerole_name",role_name
        user = request.POST.getlist('user_name') 
        userlist=[x.encode('UTF8') for x in user]
        print "useruseruseruseruseruseruseruseruseruser",userlist
        for obj in userlist:
          staff_id=int(obj)
          print "staff_idstaff_idstaff_idstaff_id",staff_id
          StaffDetail = StaffDetails.objects.get(id  =  staff_id )
          StaffDetail.role_type = role_name
          StaffDetail.save()
          
        if form.is_valid():
            form.save()
        
    return redirect('/school/roleUser/')  


def ViewMultiselectUserList(request):   
    print "in ViewMultiselectUserList............"
    modelDict=[]
    role_name = request.GET.get('role_name',None)
    print ">>>>>>>>>>>>>", role_name
    RoleUserRelationObj = RoleUserRelation.objects.filter(role_name = role_name)
    for obj in RoleUserRelationObj:
        print" ClassSubjectMaping",obj.id
        RoleUserRelationObj_Id = obj.id
        RoleUserRelationUserName_obj = RoleUserRelationUserName.objects.filter(roleuserrelation_id  =  RoleUserRelationObj_Id )
        print" RoleUserRelationUserName_obj", RoleUserRelationUserName_obj
        for object in  RoleUserRelationUserName_obj:
            staffdetailsId = object.staffdetails_id
            print "staffdetailsId",staffdetailsId
            User = StaffDetails.objects.filter(id = staffdetailsId) 
            for obj in User:
                modelDict.append(model_to_dict(obj)) 
    return JsonResponse(modelDict,safe=False)
      
     
     
####################### TEACHER SUBJECT Mapping #####################

    ###########SHOWS  TEACHER SUBJECT Mapping #############
def TeacherSubject(request):
    print"in section class"
   
    TeacherSubjectRelation = TeacherSubjectRelationForm()
    #print 'TeacherSubjectRelation',TeacherSubjectRelation        
    return render(request,'teacher_subject_mapping.html', {'TeacherSubjectRelationForm':TeacherSubjectRelation})

  ##############Save Teacher Subject MAPPING Form######
def TeacherSubjectMapping(request):
    print"TeacherSubjectMapping"
    if request.method == 'POST':
        print"in post"
        form = TeacherSubjectRelationForm(request.POST)
        print form.errors
        if form.is_valid():
            form.save()
            print"save done........"
            
    return redirect('/school/teacherSubject/')  

def ViewMultiselectTeacherSubjectList(request):   
    print "in ViewMultiselectUserList............"
    modelDict=[]
    teacher_name = request.GET.get('teacher_name',None)
    assistant_teacher_name = request.GET.get('assistant_teacher_name',None)
    print ">>>>>>>>>>>>>", teacher_name
    print ">>>>>>>>>>>>>", assistant_teacher_name
    TeacherSubjectRelationObj = TeacherSubjectRelation.objects.filter(teacher_name = teacher_name)
    for obj in  TeacherSubjectRelationObj:
       print"  TeacherSubjectRelationObjMaping",obj.id
       TeacherSubjectRelationObj_Id = obj.id
       TeacherSubjectRelationSubjectName_obj = TeacherSubjectRelationSubjectName.objects.filter(teachersubjectrelation_id  =  TeacherSubjectRelationObj_Id )
       print" RoleUserRelationUserName_obj",  TeacherSubjectRelationSubjectName_obj
       for object in TeacherSubjectRelationSubjectName_obj:
            subjectId = object.subject_id
            print "subjectId",subjectId
            subject = Subject.objects.filter(id = subjectId) 
            for obj in subject:
                modelDict.append(model_to_dict(obj)) 
    return JsonResponse(modelDict,safe=False)


def ViewSectionDetail(request):  
    
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

def ViewTeacherDetail(request):  
    
    print "in view teacher detail"
    print "ViewMultisectTeacherList............"
    print "in ViewMultisectClassList............"
    modelDict=[]
    class_name = request.GET.get('class_name',None)
    print ">>>>>>>>>>>>>", class_name
    ClassTeacherMap = ClassTeacherMapping.objects.filter(class_name = class_name)
    print"ClassTeacherMap",ClassTeacherMap
    for obj in ClassTeacherMap:
        print" ClassTeacherMapping",obj.id
        ClassTeacherMapping_Id = obj.id
        ClassTeacherMappingTeacherName_obj = ClassTeacherMappingTeacherName.objects.filter(classteachermapping_id  =  ClassTeacherMapping_Id )
        print"ClassSectionMappingSectionName_obj ",ClassTeacherMappingTeacherName_obj 
        for object in ClassTeacherMappingTeacherName_obj :
            staffdetailsId = object.staffdetails_id
            print "TeacherId",staffdetailsId
            StaffDetail = StaffDetails.objects.filter(id = staffdetailsId)
            print "Teacher:",StaffDetail
            for obj in StaffDetail:
                rec={}
                rec['id']=obj.id
                rec['email']=obj.email
                modelDict.append(rec) 
                #modelDict.dumps(str(obj.photo))
            print "modelDictmodelDictmodelDictmodelDictmodelDictmodelDictmodelDict",modelDict
    return JsonResponse(modelDict,safe=False)


def ViewClassDetail(request):  
    
    print "in view class detail"
    print "ViewClassDetail............"
    modelDict=[]
    teacher_name = request.GET.get('teacher_name',None)
    print ">>>>>>>>>>>>>", teacher_name
    ClassTeacherMap = ClassTeacherMapping.objects.filter(teacher_name = teacher_name)
    print"ClassTeacherMap",ClassTeacherMap
    for obj in ClassTeacherMap:
        print" ClassTeacherMapping",obj.id
        ClassTeacherMapping_Id = obj.id
        ClassTeacherMappingTeacherName_obj = ClassTeacherMappingClassName.objects.filter(classteachermapping_id  =  ClassTeacherMapping_Id )
        print"ClassSectionMappingSectionName_obj ",ClassTeacherMappingTeacherName_obj 
        for object in ClassTeacherMappingTeacherName_obj :
            classId = object.classdetails_id
            print "TeacherId",classId
            ClassDetail = ClassDetails.objects.filter(id = classId)
            print "Class:",classId
            for obj in ClassDetail:
                rec={}
                rec['id']=obj.id
                rec['class_name']=obj.class_name
                modelDict.append(rec) 
                #modelDict.dumps(str(obj.photo))
            print "modelDictmodelDictmodelDictmodelDictmodelDictmodelDictmodelDict",modelDict
    return JsonResponse(modelDict,safe=False)

      
####################### SUPERVISOR CLASS Mapping #####################

    ###########SHOWS  SUPERVISOR CLASS Mapping #############
def SupervisorClass(request):
    print"in section class"
   
    SupervisorClassRelation = SupervisorClassRelationForm()
             
    return render(request,'supervisor_class_mapping.html', {'SupervisorClassRelationForm': SupervisorClassRelation})
     
##############Supervisor Class  MAPPING Form######
def SupervisorClassMapping(request):
    print"in post1"
    if request.method == 'POST':
        print"in post"
        form = SupervisorClassRelationForm(request.POST)
        if form.is_valid():
            form.save()
    return redirect('/school/supervisorClass/')     

def ViewMultiselectSupervisorClassList(request):   
    print "in ViewMultiselectUserList............"
    modelDict=[]
    supervisor_name = request.GET.get('supervisor_name',None)
    print ">>>>>>>>>>>>>", supervisor_name
    SupervisorClassRelationObj = SupervisorClassRelation.objects.filter(supervisor_name = supervisor_name)
    for obj in  SupervisorClassRelationObj:
       print"  SupervisorClassRelationObj",obj.id
       SupervisorClassRelationObj_Id = obj.id
       SupervisorClassRelationClassName_obj = SupervisorClassRelationClassName.objects.filter(supervisorclassrelation_id  =  SupervisorClassRelationObj_Id )
       print" SupervisorClassRelationClassName_obj",  SupervisorClassRelationClassName_obj
       for object in   SupervisorClassRelationClassName_obj:
            classdetailsId = object.classdetails_id
            print " classdetailsId", classdetailsId
            ClassDetail = ClassDetails.objects.filter(id =  classdetailsId) 
            for obj in ClassDetail:
                modelDict.append(model_to_dict(obj)) 
    return JsonResponse(modelDict,safe=False)

####################### STUDENT OPTIONAL SUBJECT Mapping #####################

    ###########SHOWS STUDENT OPTIONAL SUBJECT Mapping #############
def StudentSubject(request):
    print"in StudentSubject"
   
    StudentOptionalSubjectMapping = StudentOptionalSubjectMappingForm()
             
    return render(request,'student_optional_subject_mapping.html', {'StudentOptionalSubjectMappingForm': StudentOptionalSubjectMapping})
        
# 
    ###########SHOWS STUDENT OPTIONAL SUBJECT Mapping Form #############
def StudentSubjectMapping(request):   
    print"in post1"
    if request.method == 'POST':
        print"in post"
        form = StudentOptionalSubjectMappingForm(request.POST)
        if form.is_valid():
            form.save()
    return redirect('/school/studentSubject/')      


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


def ViewFilteredStudent(request): 
    modelDict=[]
    studentDetail =[]
    studentDetail1 =[]
    str_list1 = []
    str_list2 = []
    str_list3 = []
    str_list4 = []
    str_list5 = []
    str_list6 = []
    print "ViewFilteredStudentViewFilteredStudentViewFilteredStudent"
    class_name = request.GET.getlist('class_name[]')
   
    print "class_name",class_name
    section_name = request.GET.getlist('section_name[]')
    print "section_name",section_name
    religion = request.GET.getlist('religion[]')
    print "religion",religion
    nationality = request.GET.getlist('nationality[]')
    print "nationality",nationality
    
    if class_name and section_name and religion and nationality:
        
        print "in class name , section name , religion , nationality"
        a = [class_name , section_name , religion , nationality]
        print " a  a  a  a  a ", a 
        v = list(itertools.product(*a))
        cnt=len(v)
        print "Length",cnt
        print"listlistlistlistlistlistlist", v
        for i in range(0, cnt):
            for obj in v :
             print "obj XXXXX",obj[i]
             className = obj[i]
             print "obj yyyy",obj[i+1]
             sectionName = obj[i+1]
             print "obj zzzzz",obj[i+2]
             religion = obj[i+2]
             print "obj zzzzz",obj[i+3]
             nationality = obj[i+3]
             
             StudentDetail = StudentDetails.objects.filter(class_name = className , section = sectionName ,religion = religion , nationality = nationality)                       
             print"StudentDetailStudentDetailStudentDetailStudentDetailStudentDetailStudentDetail",StudentDetail
             
             for object in StudentDetail:
              
                 
                 
                if not object in modelDict:
                    print "obj........................",object.first_name
                    name = object.first_name
                    modelDict.append(name) 
             
#              for obj in StudentDetail:
#                  if not modelDict in StudentDetail:
#                   
#                      modelDict.append(StudentDetail)
#         print"studentDetailstudentDetailstudentDetail>>>>>>>>>>>>>>>>>>>>>>>>",studentDetail1
#         str_list1 = filter(None, studentDetail1) #
#         print"str_liststr_liststr_liststr_liststr_list",str_list1
        
         
    elif class_name and section_name and religion:
        print "in class name ,  section name , religion"
       
        a = [class_name , section_name , religion]
        print " a  a  a  a  a ", a 
        v = list(itertools.product(*a))
        print"listlistlistlistlistlistlist", v
        cnt=len(v)
        print "Length",cnt
        for i in range(0, cnt):
            for obj in v :
             print "obj XXXXX",obj[0]
             className = obj[0]
             print "obj yyyy",obj[1]
             sectionName = obj[1]
             print "obj zzzzz",obj[2]
             religion = obj[2]
             StudentDetail = StudentDetails.objects.filter(class_name=className , section=sectionName ,religion = religion)                       
             print"StudentDetailStudentDetailStudentDetailStudentDetailStudentDetailStudentDetail",StudentDetail
             for object in StudentDetail:
              
                 
                 
                if not object in modelDict:
                    print "obj........................",object.first_name
                    name = object.first_name
                    modelDict.append(name) 
             
         
    elif class_name and section_name and nationality:
        print "in class name ,  section name , nationality"
        a = [class_name , section_name , nationality]
        print " a  a  a  a  a ", a 
        v = list(itertools.product(*a))
        print"listlistlistlistlistlistlist", v
        for obj in v :
             print "obj XXXXX",obj[0]
             className = obj[0]
             print "obj yyyy",obj[1]
             sectionName = obj[1]
             print "obj zzzzz",obj[2]
             nationality = obj[2]
             StudentDetail = StudentDetails.objects.filter(class_name=className , section=sectionName ,nationality = nationality)                       
             print"StudentDetailStudentDetailStudentDetailStudentDetailStudentDetailStudentDetail",StudentDetail
             for object in StudentDetail:
              
                 
                 
                if not object in modelDict:
                    print "obj........................",object.first_name
                    name = object.first_name
                    modelDict.append(name) 
             
         
    elif class_name and section_name:
        print "in class name ,  section name"
          
        a = [class_name , section_name]
        print " a  a  a  a  a ", a 
        v = list(itertools.product(*a))
        print"listlistlistlistlistlistlist", v
          
        for obj in v :
            print "obj XXXXX",obj[0]
            className = obj[0]
            print "obj yyyy",obj[1]
            sectionName = obj[1]
            StudentDetail = StudentDetails.objects.filter(class_name=className , section=sectionName )                       
            print"StudentDetailStudentDetailStudentDetailStudentDetailStudentDetailStudentDetail",StudentDetail
            for object in StudentDetail:
              
                 
                 
                if not object in modelDict:
                    print "obj........................",object.first_name
                    name = object.first_name
                    modelDict.append(name) 
             
 
    
    elif class_name and nationality:
        print "in class name ,  nationality"
         
        a = [class_name , nationality]
        print " a  a  a  a  a ", a 
        v = list(itertools.product(*a))
        print"listlistlistlistlistlistlist", v
         
        for obj in v :
            print "obj XXXXX",obj[0]
            className = obj[0]
            print "obj yyyy",obj[1]
            nationallity = obj[1]
            StudentDetail = StudentDetails.objects.filter(class_name=className , nationality = nationallity)                     
            print"StudentDetailStudentDetailStudentDetailStudentDetailStudentDetailStudentDetail",StudentDetail
            for object in StudentDetail:
              
                 
                 
                if not object in modelDict:
                    print "obj........................",object.first_name
                    name = object.first_name
                    modelDict.append(name) 
             
         
         
    elif class_name and religion:
        print "in class name ,  religion"
        print "class_name",class_name
        print "religion",religion
        a = [class_name , religion]
        print " a  a  a  a  a ", a 
        v = list(itertools.product(*a))
        print"listlistlistlistlistlistlist", v
         
        for obj in v :
            print "obj XXXXX",obj[0]
            className = obj[0]
            print "obj yyyy",obj[1]
            Religion = obj[1]
            StudentDetail = StudentDetails.objects.filter(class_name=className , religion = Religion)                     
            for object in StudentDetail:
              
                 
                 
                if not object in modelDict:
                    print "obj........................",object.first_name
                    name = object.first_name
                    modelDict.append(name) 
             
        
    elif section_name and religion:
        print "In section name , religion"
       
        a = [section_name , religion]
        print " a  a  a  a  a ", a 
        v = list(itertools.product(*a))
        print"listlistlistlistlistlistlist", v
        for obj in v :
             
             print "obj yyyy",obj[0]
             sectionName = obj[0]
             print "obj zzzzz",obj[1]
             religion = obj[1]
             StudentDetail = StudentDetails.objects.filter(section=sectionName ,religion = religion)                       
             print"StudentDetailStudentDetailStudentDetailStudentDetailStudentDetailStudentDetail",StudentDetail
             for object in StudentDetail:
              
                 
                 
                if not object in modelDict:
                    print "obj........................",object.first_name
                    name = object.first_name
                    modelDict.append(name)   
                    
    elif section_name and nationality:
        print "In section name , nationality"
       
        a = [section_name , nationality]
        print " a  a  a  a  a ", a 
        v = list(itertools.product(*a))
        print"listlistlistlistlistlistlist", v
        for obj in v :
             
             print "obj yyyy",obj[0]
             sectionName = obj[0]
             print "obj zzzzz",obj[1]
             nationality = obj[1]
             StudentDetail = StudentDetails.objects.filter(section=sectionName ,nationality = nationality)                       
             print"StudentDetailStudentDetailStudentDetailStudentDetailStudentDetailStudentDetail",StudentDetail
             for object in StudentDetail:
              
                 
                 
                if not object in modelDict:
                    print "obj........................",object.first_name
                    name = object.first_name
                    modelDict.append(name)  
                    
                    
    elif religion and nationality:
        print "In religion , nationality"
       
        a = [religion , religion]
        print " a  a  a  a  a ", a 
        v = list(itertools.product(*a))
        print"listlistlistlistlistlistlist", v
        for obj in v :
             
             print "obj yyyy",obj[1]
             religion = obj[1]
             print "obj zzzzz",obj[2]
             nationality = obj[2]
             StudentDetail = StudentDetails.objects.filter(religion=religion ,nationality = nationality)                       
             print"StudentDetailStudentDetailStudentDetailStudentDetailStudentDetailStudentDetail",StudentDetail
             for object in StudentDetail:
              
                 
                 
                if not object in modelDict:
                    print "obj........................",object.first_name
                    name = object.first_name
                    modelDict.append(name)                    
    
    
    elif class_name and religion and nationality:
        print "in class name ,  religion , nationality"
        a = [class_name , religion , nationality]
        print " a  a  a  a  a ", a 
        v = list(itertools.product(*a))
        print"listlistlistlistlistlistlist", v
        for obj in v :
             print "obj XXXXX",obj[0]
             className = obj[0]
             print "obj yyyy",obj[1]
             religion = obj[1]
             print "obj zzzzz",obj[2]
             nationality = obj[2]
             StudentDetail = StudentDetails.objects.filter(class_name=className , religion=religion ,nationality = nationality)                       
             print"StudentDetailStudentDetailStudentDetailStudentDetailStudentDetailStudentDetail",StudentDetail
             for object in StudentDetail:
              
                 
                 
                if not object in modelDict:
                    print "obj........................",object.first_name
                    name = object.first_name
                    modelDict.append(name) 
                    
                    
    elif section_name and nationality and religion:
        print "in section_name ,  religion , nationality"
        a = [section_name , religion , nationality]
        print " a  a  a  a  a ", a 
        v = list(itertools.product(*a))
        print"listlistlistlistlistlistlist", v
        for obj in v :
             print "obj XXXXX",obj[0]
             section_name = obj[0]
             print "obj yyyy",obj[1]
             religion = obj[1]
             print "obj zzzzz",obj[2]
             nationality = obj[2]
             StudentDetail = StudentDetails.objects.filter(section_name=section_name , religion=religion ,nationality = nationality)                       
             print"StudentDetailStudentDetailStudentDetailStudentDetailStudentDetailStudentDetail",StudentDetail
             for object in StudentDetail:
              
                 
                 
                if not object in modelDict:
                    print "obj........................",object.first_name
                    name = object.first_name
                    modelDict.append(name) 
                    
    elif class_name:
        print "in class_name"
        a = [class_name]
        print " a  a  a  a  a ", a 
        v = list(itertools.product(*a))
        print"listlistlistlistlistlistlist", v
        print "VVV",v
        cnt=len(v)
        print "Length",cnt
        for i in range(0, cnt):
            for obj in v :
             print "obj XXXXX",obj[i]
             class_name = obj[i]
             StudentDetail = StudentDetails.objects.filter(class_name=class_name)                       
             print"StudentDetailStudentDetailStudentDetailStudentDetailStudentDetailStudentDetail",StudentDetail
             for object in StudentDetail:
              
                 
                 
                if not object in modelDict:
                    print "obj........................",object.first_name
                    name = object.first_name
                    modelDict.append(name)
                    
    elif section_name:
        print "in section_name"
        a = [section_name]
        print " a  a  a  a  a ", a 
        v = list(itertools.product(*a))
        print"listlistlistlistlistlistlist", v
        for obj in v :
             print "obj XXXXX",obj[0]
             section_name = obj[0]
             StudentDetail = StudentDetails.objects.filter(section_name=section_name)                       
             print"StudentDetailStudentDetailStudentDetailStudentDetailStudentDetailStudentDetail",StudentDetail
             for object in StudentDetail:
              
                 
                 
                if not object in modelDict:
                    print "obj........................",object.first_name
                    name = object.first_name
                    modelDict.append(name)
                    
    elif religion:
        print "in religion"
        a = [religion]
        print " a  a  a  a  a ", a 
        v = list(itertools.product(*a))
        print"listlistlistlistlistlistlist", v
        for obj in v :
             print "obj XXXXX",obj[0]
             religion = obj[0]
             StudentDetail = StudentDetails.objects.filter(religion=religion)                       
             print"StudentDetailStudentDetailStudentDetailStudentDetailStudentDetailStudentDetail",StudentDetail
             for object in StudentDetail:
              
                 
                 
                if not object in modelDict:
                    print "obj........................",object.first_name
                    name = object.first_name
                    modelDict.append(name)  
                    
    elif nationality:
        print "in nationality"
        a = [nationality]
        print " a  a  a  a  a ", a 
        v = list(itertools.product(*a))
        print"listlistlistlistlistlistlist", v
        for obj in v :
             print "obj XXXXX",obj[0]
             nationality = obj[0]
             StudentDetail = StudentDetails.objects.filter(nationality=nationality)                       
             print"StudentDetailStudentDetailStudentDetailStudentDetailStudentDetailStudentDetail",StudentDetail
             for object in StudentDetail:
              
                 
                 
                if not object in modelDict:
                    print "obj........................",object.first_name
                    name = object.first_name
                    modelDict.append(name)    
                    
                                   

    return JsonResponse(modelDict,safe=False)
    
  
    
              
