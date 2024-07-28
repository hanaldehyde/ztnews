from django.shortcuts import render, HttpResponse, get_object_or_404
from .models import Article
from django.core.paginator import Paginator


# Create your views here.

def article_list(request):
    articles = Article.objects.all().order_by('-published_date')

    article_objects = Article.objects.all()  # 获取所有文章的查询集
    paginator = Paginator(article_objects, 10)  # 每页显示10篇文章
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    return render(request, 'article_list.html', {'articles': articles, 'page_obj': page_obj})

def article_detail(request, article_id):
    article = get_object_or_404(Article, pk=article_id)
    return render(request, 'article_detail.html', {'article': article})