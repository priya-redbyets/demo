from django.conf.urls import include, url
from django.contrib import admin
from . import views
from django.contrib.auth.views import logout
from django.conf import settings
from django.conf.urls.static import static

app_name = 'Registration'


urlpatterns = [
    
    url(r'^login/$', views.Login, name='login'),
    url(r'^login_succes/$', views.Login_Succes, name='login_succes'),
    url(r'^logout/$',logout, {'next_page':'/school/login'}),
    
    

    url(r'^manage_details/$',views.ManageUser, name='manage_details'),
    url(r'^academic_school_view/$',views.AcademicSchoolView, name='academic_school_view'),
    url(r'^dashbord_view/$',views.DashbordView, name='dashbord_view'),
    url(r'^profile_view/$',views.ProfileView, name='profile_view'),
    url(r'^add_attendance/$',views.AddAttendance, name='add_attendance'),
    url(r'^viewSectionRelation/$',views.viewSectionRelation, name='viewSectionRelation'),
    url(r'^assign_role/$',views.AssignRole, name='assign_role'),
   
    #--------------------------- Role ---------------------------------------------#
    url(r'^add_role/$',views.AddRole, name='add_role'),
    url(r'^role_details/$',views.RoleDetail, name='role_details'),
    url(r'^save_role/$',views.SaveRole, name='save_role'),
    
    url(r'^update_role/$',views.RoleDetail, name='update_role'), 
    url(r'^update_role/(?P<role_id>[0-9]+)$', views.UpdateRole, name='update_role'),
    url(r'^save_updated_role/$',views.SaveUpdatedRole, name='save_updated_role'),
    
    url(r'^delete_role/(?P<role_id>[0-9]+)$', views.DeleteRole, name='delete_role'),
    url(r'^delete_role/$',views.RoleDetail, name='delete_role'),
 

    url(r'^add_student/$',views.AddStudent, name='add_student'),
    url(r'^student_details/$',views.StudentDetail, name='student_details'),
    url(r'^save_student/$',views.SaveStudent, name='save_student'),
    url(r'^add_staff/$',views.AddStaff, name='add_staff'),
    url(r'^view_staff/$',views.ViewStaff, name='view_staff'),
    url(r'^save_staff/$',views.SaveStaff, name='save_staff'),
    url(r'^delete_staff/$',views.ViewStaff, name='delete_staff'),
    url(r'^edit_staff/$',views.ViewStaff, name='edit_staff'),
    url(r'^save_edited_staff/$',views.Save_edited_staff, name='save_edited_staff'),
    url(r'^deactivate_staff/$',views.ViewStaff, name='deactivate_staff'),
    url(r'^delete_staff/(?P<staff_id>[0-9]+)$', views.Delete_Staff, name='delete_staff'),
    url(r'^edit_staff/(?P<staff_id>[0-9]+)$', views.Edit_Staff, name='edit_staff'),
    

    url(r'^add_subject/$',views.AddSubject, name='add_subject'),
    url(r'^view_subject/$',views.ViewSubject, name='view_subject'),
    url(r'^save_subject/$',views.SaveSubject, name='save_subject'),
    url(r'^edit_subject/(?P<subject_id>[0-9]+)$', views.Edit_Subject, name='edit_subject'),
    url(r'^save_edit_subject/$',views.save_edit_subject, name='save_edit_subject'),
    url(r'^delete_subject/(?P<subject_id>[0-9]+)$', views.delete_subject, name='delete_subject'),
    
    url(r'^deactivate_student/(?P<std_id>[0-9]+)$',views.DeactivateStudent, name='deactivate_student'),
    url(r'^delete_student/$', views.DeleteStudent, name='delete_student'),
    url(r'^edit_student/(?P<std_id>[0-9]+)$', views.EditStudent, name='edit_student'),

    url(r'^save_edited_student/$',views.SaveEditedStudent, name='save_edited_student'),
    url(r'^saveStudentSubject/$',views.saveStudentSubject, name='saveStudentSubject'),
     
    url(r'^add_academicyr/$',views.AddAcademicYr, name='add_academicyr'),
    url(r'^academic_details/$',views.AcademicYrDetail, name='academic_details'),
    url(r'^save_academicyr/$',views.SaveAcdemicYr, name='save_academicyr'),
    
    url(r'^update_academicyr/$',views.AcademicYrDetail, name='update_academicyr'), 
    url(r'^update_academicyr/(?P<year_id>[0-9]+)$', views.UpdateAcademicYr, name='update_academicyr'),
    url(r'^save_updated_academicyr/$',views.SaveUpdatedAcademicYr, name='save_updated_academicyr'),
    
    url(r'^delete_academicyr/(?P<year_id>[0-9]+)$', views.DeleteAcademicYr, name='delete_academicyr'),
    url(r'^delete_academicyr/$',views.AcademicYrDetail, name='delete_academicyr'),

 
    url(r'^add_class/$',views.AddClass, name='add_class'),
    url(r'^class_details/$',views.ClassDetail, name='class_details'),
    url(r'^save_class/$',views.SaveClass, name='save_class'),
    
    url(r'^update_class/$',views.ClassDetail, name='update_class'), 
    url(r'^update_class/(?P<class_id>[0-9]+)$', views.UpdateClass, name='update_class'),
    url(r'^save_updated_class/$',views.SaveUpdatedClass, name='save_updated_class'),
    
    url(r'^delete_class/(?P<class_id>[0-9]+)$', views.DeleteClass, name='delete_class'),
    url(r'^delete_class/$',views.ClassDetail, name='delete_class'),
    
    url(r'^add_section/$',views.AddSection, name='add_section'),
    url(r'^section_details/$',views.SectionDetail, name='section_details'),
    url(r'^save_section/$',views.SaveSection, name='save_section'),
    
    url(r'^update_section/$',views.SectionDetail, name='update_section'), 
    url(r'^update_section/(?P<section_id>[0-9]+)$', views.UpdateSection, name='update_section'),
    url(r'^save_updated_section/$',views.SaveUpdatedSection, name='save_updated_section'),
    
    url(r'^delete_section/(?P<section_id>[0-9]+)$', views.DeleteSection, name='delete_section'),
    url(r'^delete_section/$',views.SectionDetail, name='delete_section'),
    
    url(r'^viewAcademic/$',views.viewAcademic, name='viewAcademic'),
    
    #--------------------------- SCHOOL DETAILS -----------------#
    url(r'^add_school/$',views.AddSchool, name='add_school'),
    url(r'^school_details/$',views.SchoolDetail, name='school_details'),
    url(r'^save_school/$',views.SaveSchool, name='save_school'),
    
    url(r'^update_school/$',views.SchoolDetail, name='update_school'), 
    url(r'^update_school/(?P<school_id>[0-9]+)$', views.UpdateSchool, name='update_school'),
    url(r'^save_updated_school/$',views.SaveUpdatedSchool, name='save_updated_school'),
    
    url(r'^delete_school/(?P<school_id>[0-9]+)$', views.DeleteSchool, name='delete_school'),
    url(r'^delete_school/$',views.SchoolDetail, name='delete_school'),

    url(r'^viewSubject/$',views.viewSubject, name='viewSubject'),
    url(r'^viewStudentSubject/$',views.viewStudentSubject, name='viewStudentSubject'),
   
    
    #url(r'^viewSub/$',views.viewSub, name='viewSub'),
     #--------------------------- CLASS SUBJECT DETAILS -----------------#
    url(r'^viewSub/$',views.viewSubject, name='viewSubject'),
    url(r'^saveClassSubject/$',views.saveClassSubject, name='saveClassSubject'),
    url(r'^viewClassSubjectSec/$',views.viewClassSubjectSec, name='viewClassSubject'),
    
    #--------------------------- CLASS SECTION DETAILS -----------------#
    url(r'^viewSection/$',views.viewSection, name='viewSection'),
    url(r'^saveClassSection/$',views.saveClassSection, name='saveClassSection'),
    url(r'^viewClassSection/$',views.viewClassSection, name='viewClassSection'),
    #--------------------------- PARENT DETAILS -----------------#
     url(r'^deleteParent/$',views.DeleteParent, name='deleteParent'),
     url(r'^saveEditedParent/$',views.saveEditedParent, name='saveEditedParent'),
   
    
    url(r'^viewParent/$',views.viewParent, name='viewParent'),
    url(r'^saveParent/$',views.saveParent, name='saveParent'),
    url(r'^viewParentEmail/$',views.viewParentEmail, name='viewParentEmail'),
     url(r'^parentList/$',views.ParentList, name='parentList'),
    url(r'^editParent/(?P<parent_id>[0-9]+)$', views.editParent, name='editParent'),
     url(r'^delete_student/$', views.DeleteStudent, name='delete_student'),
    
   
   ]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

