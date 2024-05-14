"""
URL configuration for myportfolio project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from project.views import home_screen
from project.views import about_screen
from project.views import appointment_screen
from project.views import call_to_action_screen
from project.views import classes_screen
from project.views import contact_screen
from project.views import facility_screen
from project.views import team_screen
from project.views import testimonial_screen
from project.views import error_screen



urlpatterns = [
    path('admin/', admin.site.urls),
    path('', home_screen, name=""),
    path('about/', about_screen, name="about"),
    path('appointment/', appointment_screen, name="appointment"),
    path('call-to-action/', call_to_action_screen, name="call-to-action"),
    path('classes/', classes_screen, name="classes"),
    path('contact/', contact_screen, name="contact"),
    path('facility/', facility_screen, name="facility"),
    path('team/', team_screen, name="team"),
    path('testimonial/', testimonial_screen, name="testimonial"),
    path('404/', error_screen, name="404"),
]
