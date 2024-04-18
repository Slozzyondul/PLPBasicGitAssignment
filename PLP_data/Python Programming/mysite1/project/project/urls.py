"""
URL configuration for project project.

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
from personal1.views import home_screen
from personal1.views import about_screen
from personal1.views import contact_screen
from personal1.views import courses_screen
from personal1.views import elements_screen
from personal1.views import news_screen
from personal1.views import instructors_screen
from personal1.views import blog_screen

urlpatterns = [
    path('', home_screen, name=""), 
    path("admin", admin.site.urls),
    path("index", home_screen, name="home"),
    path("about", about_screen, name="about"),  
    path("contact", contact_screen, name="contact"),
    path("courses", courses_screen, name="courses"),
    path("elements", elements_screen, name="elements"),
    path("news", news_screen, name="news"),
    #path("instructors", instructors_screen, name="instructors"),
    #path("blog", blog_screen, name="blog"),
]
