# helloapp/urls.py (新規作成)
from django.urls import path
from . import views

urlpatterns = [
    # トップページ (例: http://localhost:8000/) へのアクセスが来たら、
    # views.py の中の index という関数を呼び出してね、という設定
    path('', views.index, name='index'),
]