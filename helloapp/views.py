from django.shortcuts import render

# Create your views here.
# index関数を定義
def index(request):
    # 'helloapp/index.html' というHTMLファイルを表示する
    return render(request, 'helloapp/index.html')