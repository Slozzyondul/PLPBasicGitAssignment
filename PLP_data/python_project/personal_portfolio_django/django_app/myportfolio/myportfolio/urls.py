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
from project.views import contact_screen
from project.views import blog_screen
from project.views import cart_screen
from project.views import checkout_screen
from project.views import services_screen
from project.views import shop_screen
from project.views import thankyou_screen


urlpatterns = [
    path('admin/', admin.site.urls),
    path('', home_screen, name=""),
    path('index/', home_screen, name="index"),
    path('about/', about_screen, name="about"),
    path('contact/', contact_screen, name="contact"),
    path('blog/', blog_screen, name="blog"),
    path('cart/', cart_screen, name="cart"),
    path('checkout/', checkout_screen, name="checkout"),
    path('services/', services_screen, name="services"),
    path('shop/', shop_screen, name="shop"),
    path('thankyou/', thankyou_screen, name="thankyou"),
]
