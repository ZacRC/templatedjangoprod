from django.urls import path
from . import views
from django.contrib.auth.views import LogoutView

urlpatterns = [
    path('', views.index, name='index'),
    path('login/', views.user_login, name='login'),
    path('register/', views.register, name='register'),
    path('logout/', LogoutView.as_view(), name='logout'),
]