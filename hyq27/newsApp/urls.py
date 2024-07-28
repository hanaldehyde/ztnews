from django.urls import path
from newsApp import views



urlpatterns = [

    path('article_list', views.article_list, name='article_list'),
    path('articles/<int:article_id>/', views.article_detail, name='article_detail'),

]